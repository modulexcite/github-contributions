@ECHO OFF
SET WORKING_PATH=D:\github-contributions
SET PROCESSOR=%WORKING_PATH%\util\archive-processor
SET DATA_PATH=D:\github-archive

SET GHC_LOCKFILE_PATH=%DATA_PATH%\archive-processor.lock
SET GHC_EVENTS_PATH=%DATA_PATH%\events
SET GHC_TIMELINE_PATH=%DATA_PATH%\timeline
SET GHC_TRANSFORMED_PATH=%DATA_PATH%\transformed
SET GHC_LOADED_PATH=%DATA_PATH%\loaded
SET GHC_LOG_PATH=%DATA_PATH%\logs

ECHO GHCA Archive Processor on Windows

REM Don't even try to run multiple copies
REM If we do, they'll just get queued, but then we might have a lot of processes.
IF EXIST %GHC_LOCKFILE_PATH% (
    ECHO "archive-processor already running (lockfile: %GHC_LOCKFILE_PATH%)"
    EXIT
)

CD %WORKING_PATH%

python -Wd %PROCESSOR% process