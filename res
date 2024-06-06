==30355== Helgrind, a thread error detector
==30355== Copyright (C) 2007-2017, and GNU GPL'd, by OpenWorks LLP et al.
==30355== Using Valgrind-3.15.0 and LibVEX; rerun with -h for copyright info
==30355== Command: ./philo 20 800 200 200 10
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #11 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #11: lock order "0x4A83010 before 0x4A82EA0" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A82EA0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A83010
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A83010 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83010 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A82EA0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82ea0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #4 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #4: lock order "0x4A82600 before 0x4A82490" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A82490
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A82600
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A82600 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82600 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A82490 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82490 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #6 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #6: lock order "0x4A828E0 before 0x4A82770" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A82770
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A828E0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A828E0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a828e0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A82770 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82770 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #2 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #2: lock order "0x4A82320 before 0x4A821B0" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A821B0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A82320
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A82320 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82320 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A821B0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a821b0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #10 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #10: lock order "0x4A82EA0 before 0x4A82D30" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A82D30
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A82EA0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A82EA0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82ea0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A82D30 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82d30 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #14 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #14: lock order "0x4A83460 before 0x4A832F0" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A832F0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A83460
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A83460 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83460 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A832F0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a832f0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #20 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #20: lock order "0x4A83D00 before 0x4A83B90" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A83B90
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A83D00
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A83D00 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83d00 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A83B90 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83b90 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #18 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #18: lock order "0x4A83A20 before 0x4A838B0" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A838B0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A83A20
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A83A20 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83a20 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A838B0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a838b0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #12 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #12: lock order "0x4A83180 before 0x4A83010" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A83010
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A83180
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A83180 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83180 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A83010 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83010 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #16 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #16: lock order "0x4A83740 before 0x4A835D0" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A835D0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A83740
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A83740 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83740 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A835D0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a835d0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #8 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #8: lock order "0x4A82BC0 before 0x4A82A50" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A82A50
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A82BC0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A82BC0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82bc0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A82A50 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82a50 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #5 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #5: lock order "0x4A82770 before 0x4A82600" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A82600
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A82770
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A82770 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82770 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A82600 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82600 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #3 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #3: lock order "0x4A82490 before 0x4A82320" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A82320
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A82490
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A82490 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82490 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A82320 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82320 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #19 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #19: lock order "0x4A83B90 before 0x4A83A20" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A83A20
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A83B90
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A83B90 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83b90 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A83A20 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83a20 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #17 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #17: lock order "0x4A838B0 before 0x4A83740" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A83740
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A838B0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A838B0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a838b0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A83740 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83740 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #21 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #21: lock order "0x4A821B0 before 0x4A83D00" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A83D00
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A821B0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A821B0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a821b0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A83D00 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83d00 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #13 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #13: lock order "0x4A832F0 before 0x4A83180" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A83180
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A832F0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A832F0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a832f0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A83180 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83180 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #7 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #7: lock order "0x4A82A50 before 0x4A828E0" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A828E0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A82A50
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A82A50 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82a50 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A828E0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a828e0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #15 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #15: lock order "0x4A835D0 before 0x4A83460" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A83460
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A835D0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A835D0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a835d0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A83460 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83460 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #9 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A147: thread_init (init.c:90)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #9: lock order "0x4A82D30 before 0x4A82BC0" violated
==30355== 
==30355== Observed (incorrect) order is: acquisition of lock at 0x4A82BC0
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109BF1: take_forks (routine.c:32)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  followed by a later acquisition of lock at 0x4A82D30
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C08: take_forks (routine.c:33)
==30355==    by 0x109372: thread_function (philosophers.c:43)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355==  Lock at 0x4A82D30 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82d30 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355==  Lock at 0x4A82BC0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82bc0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #22 was created
==30355==    at 0x49AC342: clone (clone.S:71)
==30355==    by 0x48712EB: create_thread (createthread.c:101)
==30355==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==30355==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A1A9: thread_init (init.c:93)
==30355==    by 0x109980: main (philosophers.c:178)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked a not-locked lock at 0x4A82040
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109868: is_full (philosophers.c:154)
==30355==    by 0x109595: stop (philosophers.c:81)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82040 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109F07: check_args (init.c:38)
==30355==    by 0x109944: main (philosophers.c:175)
==30355==  Address 0x4a82040 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109E99: check_args (init.c:33)
==30355==    by 0x109944: main (philosophers.c:175)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A821B0 currently held by thread #21
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A821B0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a821b0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22: Bug in libpthread: write lock granted on mutex/rwlock which is currently wr-held by a different thread
==30355==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A31: finish (utils.c:26)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A821B0 currently held by thread #21
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A821B0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a821b0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82320 currently held by thread #3
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82320 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82320 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82320 currently held by thread #3
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82320 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82320 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82490 currently held by thread #3
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82490 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82490 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82490 currently held by thread #3
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82490 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82490 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82600 currently held by thread #5
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82600 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82600 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82600 currently held by thread #5
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82600 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82600 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82770 currently held by thread #5
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82770 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82770 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82770 currently held by thread #5
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82770 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82770 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A828E0 currently held by thread #7
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A828E0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a828e0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A828E0 currently held by thread #7
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A828E0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a828e0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82A50 currently held by thread #7
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82A50 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82a50 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82A50 currently held by thread #7
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82A50 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82a50 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82BC0 currently held by thread #9
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82BC0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82bc0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82BC0 currently held by thread #9
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82BC0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82bc0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82D30 currently held by thread #9
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82D30 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82d30 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82D30 currently held by thread #9
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82D30 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82d30 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82EA0 currently held by thread #11
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82EA0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82ea0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A82EA0 currently held by thread #11
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A82EA0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82ea0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83010 currently held by thread #11
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83010 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83010 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83010 currently held by thread #11
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83010 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83010 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83180 currently held by thread #13
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83180 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83180 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83180 currently held by thread #13
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83180 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83180 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A832F0 currently held by thread #13
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A832F0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a832f0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A832F0 currently held by thread #13
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A832F0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a832f0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83460 currently held by thread #15
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83460 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83460 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83460 currently held by thread #15
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83460 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83460 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A835D0 currently held by thread #15
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A835D0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a835d0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A835D0 currently held by thread #15
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A835D0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a835d0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83740 currently held by thread #17
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83740 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83740 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83740 currently held by thread #17
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83740 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83740 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A838B0 currently held by thread #17
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A838B0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a838b0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A838B0 currently held by thread #17
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A838B0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a838b0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83A20 currently held by thread #19
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83A20 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83a20 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83A20 currently held by thread #19
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83A20 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83a20 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83B90 currently held by thread #19
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83B90 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83b90 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83B90 currently held by thread #19
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83B90 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83b90 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83D00 currently held by thread #21
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A1A: finish (utils.c:25)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83D00 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83d00 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #22 unlocked lock at 0x4A83D00 currently held by thread #21
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109A48: finish (utils.c:27)
==30355==    by 0x1095A5: stop (philosophers.c:83)
==30355==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x4872608: start_thread (pthread_create.c:477)
==30355==    by 0x49AC352: clone (clone.S:95)
==30355==  Lock at 0x4A83D00 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83d00 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ---Thread-Announcement------------------------------------------
==30355== 
==30355== Thread #1 is the program's root thread
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A821B0
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A821B0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a821b0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1's call to pthread_mutex_destroy failed
==30355==    with error code 16 (EBUSY: Device or resource busy)
==30355==    at 0x483FD60: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109CAC: free_philo (free_all.c:34)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A82320
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A82320 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82320 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A82490
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A82490 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82490 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A82600
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A82600 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82600 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A82770
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A82770 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82770 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A828E0
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A828E0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a828e0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A82A50
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A82A50 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82a50 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A82BC0
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A82BC0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82bc0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A82D30
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A82D30 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82d30 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A82EA0
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A82EA0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a82ea0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A83010
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A83010 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83010 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A83180
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A83180 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83180 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A832F0
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A832F0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a832f0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A83460
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A83460 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83460 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A835D0
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A835D0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a835d0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A83740
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A83740 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83740 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A838B0
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A838B0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a838b0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A83A20
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A83A20 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83a20 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A83B90
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A83B90 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83b90 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A83D00
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109C9C: free_philo (free_all.c:33)
==30355==    by 0x10998F: main (philosophers.c:179)
==30355==  Lock at 0x4A83D00 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A08D: ft_malloc_init (init.c:72)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Address 0x4a83d00 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x10A05A: ft_malloc_init (init.c:69)
==30355==    by 0x10963B: create_philo (philosophers.c:105)
==30355==    by 0x109971: main (philosophers.c:177)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A82040
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109D06: free_data (free_all.c:44)
==30355==    by 0x10999B: main (philosophers.c:180)
==30355==  Lock at 0x4A82040 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109F07: check_args (init.c:38)
==30355==    by 0x109944: main (philosophers.c:175)
==30355==  Address 0x4a82040 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109E99: check_args (init.c:33)
==30355==    by 0x109944: main (philosophers.c:175)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1 unlocked a not-locked lock at 0x4A820B0
==30355==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109D16: free_data (free_all.c:45)
==30355==    by 0x10999B: main (philosophers.c:180)
==30355==  Lock at 0x4A820B0 was first observed
==30355==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109EF2: check_args (init.c:37)
==30355==    by 0x109944: main (philosophers.c:175)
==30355==  Address 0x4a820b0 is 0 bytes inside a block of size 40 alloc'd
==30355==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109EAE: check_args (init.c:34)
==30355==    by 0x109944: main (philosophers.c:175)
==30355==  Block was alloc'd by thread #1
==30355== 
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1's call to pthread_mutex_destroy failed
==30355==    with error code 16 (EBUSY: Device or resource busy)
==30355==    at 0x483FD60: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109D26: free_data (free_all.c:46)
==30355==    by 0x10999B: main (philosophers.c:180)
==30355== 
==30355== ----------------------------------------------------------------
==30355== 
==30355== Thread #1's call to pthread_mutex_destroy failed
==30355==    with error code 16 (EBUSY: Device or resource busy)
==30355==    at 0x483FD60: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==30355==    by 0x109D36: free_data (free_all.c:47)
==30355==    by 0x10999B: main (philosophers.c:180)
==30355== 
==30355== 
==30355== Use --history-level=approx or =none to gain increased speed, at
==30355== the cost of reduced accuracy of conflicting-access information
==30355== For lists of detected and suppressed errors, rerun with: -s
==30355== ERROR SUMMARY: 290 errors from 87 contexts (suppressed: 10303 from 103)
