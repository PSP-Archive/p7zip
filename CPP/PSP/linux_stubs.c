#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>

int stat(const char *__path, struct stat *__sbuf)
{
  return 0;
}

int lstat(const char *path, void *buf)
{
  return 0;
}

int utime(const char *filename, void *times)
{
  return 0;
}

int ftruncate(int fd, int length)
{
  return 0;
}

int symlink(const char *path1, const char *path2)
{
  return 0;
}

int chmod(const char *pathname, mode_t mode)
{
  return 0;
}

char *getpass(const char *prompt)
{
  static char buf[1] = {0};
  return buf;
}

pid_t getppid(void)
{
  return 0;
}

mode_t umask(mode_t mask)
{
  return 0777;
}