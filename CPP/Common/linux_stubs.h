#pragma once

#include <sys/stat.h>

#ifdef __cplusplus
extern "C"
{
#endif
  typedef long int off_t;
  int stat(const char *__path, struct stat *buf);
  int lstat(const char *path, struct stat *buf);
  int utime(const char *filename, const struct utimbuf *times);
  int ftruncate(int fd, off_t length);
  int symlink(const char *path1, const char *path2);
  int chmod(const char *pathname, mode_t mode);

#ifdef __cplusplus
}
#endif
