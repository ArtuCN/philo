==1496275== Helgrind, a thread error detector
==1496275== Copyright (C) 2007-2017, and GNU GPL'd, by OpenWorks LLP et al.
==1496275== Using Valgrind-3.15.0 and LibVEX; rerun with -h for copyright info
==1496275== Command: ./philo 20 400 200 10010
==1496275== 
==1496275== ---Thread-Announcement------------------------------------------
==1496275== 
==1496275== Thread #17 was created
==1496275==    at 0x49AC342: clone (clone.S:71)
==1496275==    by 0x48712EB: create_thread (createthread.c:101)
==1496275==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==1496275==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A1F1: thread_init (init.c:96)
==1496275==    by 0x109729: main (philosophers.c:131)
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #17: lock order "0x4A838B0 before 0x4A83740" violated
==1496275== 
==1496275== Observed (incorrect) order is: acquisition of lock at 0x4A83740
==1496275==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109C50: take_forks (routine.c:59)
==1496275==    by 0x109A4D: thread_function (routine.c:27)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275== 
==1496275==  followed by a later acquisition of lock at 0x4A838B0
==1496275==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109C67: take_forks (routine.c:60)
==1496275==    by 0x109A4D: thread_function (routine.c:27)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275== 
==1496275==  Lock at 0x4A838B0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a838b0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275==  Lock at 0x4A83740 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83740 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ---Thread-Announcement------------------------------------------
==1496275== 
==1496275== Thread #22 was created
==1496275==    at 0x49AC342: clone (clone.S:71)
==1496275==    by 0x48712EB: create_thread (createthread.c:101)
==1496275==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==1496275==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A253: thread_init (init.c:100)
==1496275==    by 0x109729: main (philosophers.c:131)
==1496275== 
==1496275== ---Thread-Announcement------------------------------------------
==1496275== 
==1496275== Thread #21 was created
==1496275==    at 0x49AC342: clone (clone.S:71)
==1496275==    by 0x48712EB: create_thread (createthread.c:101)
==1496275==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==1496275==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A1F1: thread_init (init.c:96)
==1496275==    by 0x109729: main (philosophers.c:131)
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked lock at 0x4A821B0 currently held by thread #21
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A821B0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a821b0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22: Bug in libpthread: write lock granted on mutex/rwlock which is currently wr-held by a different thread
==1496275==    at 0x483FEDF: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109915: finish (utils.c:51)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked lock at 0x4A821B0 currently held by thread #21
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10992C: finish (utils.c:52)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A821B0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a821b0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A82320
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A82320 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82320 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A82490
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A82490 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82490 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A82600
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A82600 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82600 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A82770
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A82770 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82770 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A828E0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A828E0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a828e0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A82A50
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A82A50 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82a50 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ---Thread-Announcement------------------------------------------
==1496275== 
==1496275== Thread #9 was created
==1496275==    at 0x49AC342: clone (clone.S:71)
==1496275==    by 0x48712EB: create_thread (createthread.c:101)
==1496275==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==1496275==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A1F1: thread_init (init.c:96)
==1496275==    by 0x109729: main (philosophers.c:131)
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked lock at 0x4A82BC0 currently held by thread #9
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A82BC0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82bc0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked lock at 0x4A82BC0 currently held by thread #9
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10992C: finish (utils.c:52)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A82BC0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82bc0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked lock at 0x4A82D30 currently held by thread #9
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A82D30 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82d30 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked lock at 0x4A82D30 currently held by thread #9
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10992C: finish (utils.c:52)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A82D30 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82d30 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ---Thread-Announcement------------------------------------------
==1496275== 
==1496275== Thread #11 was created
==1496275==    at 0x49AC342: clone (clone.S:71)
==1496275==    by 0x48712EB: create_thread (createthread.c:101)
==1496275==    by 0x4872E0F: pthread_create@@GLIBC_2.2.5 (pthread_create.c:817)
==1496275==    by 0x4842917: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A1F1: thread_init (init.c:96)
==1496275==    by 0x109729: main (philosophers.c:131)
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked lock at 0x4A82EA0 currently held by thread #11
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A82EA0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82ea0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked lock at 0x4A82EA0 currently held by thread #11
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10992C: finish (utils.c:52)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A82EA0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82ea0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked lock at 0x4A83010 currently held by thread #11
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A83010 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83010 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A83180
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A83180 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83180 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A832F0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A832F0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a832f0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A83460
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A83460 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83460 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A835D0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A835D0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a835d0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A83740
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A83740 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83740 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A838B0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A838B0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a838b0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A83A20
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A83A20 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83a20 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A83B90
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A83B90 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83b90 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #22 unlocked a not-locked lock at 0x4A83D00
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x1098FE: finish (utils.c:50)
==1496275==    by 0x109868: check_stop_death (utils.c:32)
==1496275==    by 0x10930A: stop (philosophers.c:35)
==1496275==    by 0x4842B1A: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x4872608: start_thread (pthread_create.c:477)
==1496275==    by 0x49AC352: clone (clone.S:95)
==1496275==  Lock at 0x4A83D00 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83d00 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ---Thread-Announcement------------------------------------------
==1496275== 
==1496275== Thread #1 is the program's root thread
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A821B0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A821B0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a821b0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1's call to pthread_mutex_destroy failed
==1496275==    with error code 16 (EBUSY: Device or resource busy)
==1496275==    at 0x483FD60: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D02: free_philo (free_all.c:30)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82220
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82220 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82220 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1's call to pthread_mutex_destroy failed
==1496275==    with error code 16 (EBUSY: Device or resource busy)
==1496275==    at 0x483FD60: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D22: free_philo (free_all.c:32)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82320
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82320 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82320 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82390
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82390 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82390 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82490
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82490 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82490 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82500
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82500 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82500 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82600
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82600 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82600 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82670
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82670 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82670 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82770
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82770 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82770 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A827E0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A827E0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a827e0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A828E0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A828E0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a828e0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82950
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82950 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82950 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82A50
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82A50 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82a50 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82AC0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82AC0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82ac0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82BC0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82BC0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82bc0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82C30
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82C30 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82c30 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82D30
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82D30 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82d30 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82DA0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82DA0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82da0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82EA0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82EA0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82ea0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82F10
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A82F10 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a82f10 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83010
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83010 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83010 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83080
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83080 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83080 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83180
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83180 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83180 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A831F0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A831F0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a831f0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A832F0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A832F0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a832f0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83360
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83360 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83360 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83460
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83460 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83460 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A834D0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A834D0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a834d0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A835D0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A835D0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a835d0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83640
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83640 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83640 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83740
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83740 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83740 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A837B0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A837B0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a837b0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A838B0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A838B0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a838b0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83920
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83920 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83920 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83A20
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83A20 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83a20 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83A90
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83A90 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83a90 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83B90
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83B90 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83b90 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83C00
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83C00 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83c00 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83D00
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109CF2: free_philo (free_all.c:29)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83D00 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A10F: ft_malloc_init (init.c:73)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83d00 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A0DC: ft_malloc_init (init.c:70)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A83D70
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D12: free_philo (free_all.c:31)
==1496275==    by 0x109738: main (philosophers.c:132)
==1496275==  Lock at 0x4A83D70 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A15E: ft_malloc_init (init.c:78)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Address 0x4a83d70 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x10A12B: ft_malloc_init (init.c:75)
==1496275==    by 0x1093C8: create_philo (philosophers.c:60)
==1496275==    by 0x10971A: main (philosophers.c:130)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A82040
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D88: free_data (free_all.c:41)
==1496275==    by 0x109744: main (philosophers.c:133)
==1496275==  Lock at 0x4A82040 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109F89: check_args (init.c:39)
==1496275==    by 0x1096ED: main (philosophers.c:128)
==1496275==  Address 0x4a82040 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109F1B: check_args (init.c:34)
==1496275==    by 0x1096ED: main (philosophers.c:128)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1 unlocked a not-locked lock at 0x4A820B0
==1496275==    at 0x48403F6: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109D98: free_data (free_all.c:42)
==1496275==    by 0x109744: main (philosophers.c:133)
==1496275==  Lock at 0x4A820B0 was first observed
==1496275==    at 0x4843D9D: pthread_mutex_init (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109F74: check_args (init.c:38)
==1496275==    by 0x1096ED: main (philosophers.c:128)
==1496275==  Address 0x4a820b0 is 0 bytes inside a block of size 40 alloc'd
==1496275==    at 0x483C893: malloc (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109F30: check_args (init.c:35)
==1496275==    by 0x1096ED: main (philosophers.c:128)
==1496275==  Block was alloc'd by thread #1
==1496275== 
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1's call to pthread_mutex_destroy failed
==1496275==    with error code 16 (EBUSY: Device or resource busy)
==1496275==    at 0x483FD60: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109DA8: free_data (free_all.c:43)
==1496275==    by 0x109744: main (philosophers.c:133)
==1496275== 
==1496275== ----------------------------------------------------------------
==1496275== 
==1496275== Thread #1's call to pthread_mutex_destroy failed
==1496275==    with error code 16 (EBUSY: Device or resource busy)
==1496275==    at 0x483FD60: ??? (in /usr/lib/x86_64-linux-gnu/valgrind/vgpreload_helgrind-amd64-linux.so)
==1496275==    by 0x109DB8: free_data (free_all.c:44)
==1496275==    by 0x109744: main (philosophers.c:133)
==1496275== 
==1496275== 
==1496275== Use --history-level=approx or =none to gain increased speed, at
==1496275== the cost of reduced accuracy of conflicting-access information
==1496275== For lists of detected and suppressed errors, rerun with: -s
==1496275== ERROR SUMMARY: 113 errors from 72 contexts (suppressed: 1035 from 101)
