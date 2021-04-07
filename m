Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F6A357656
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Apr 2021 22:52:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B534560DA3;
	Wed,  7 Apr 2021 20:52:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uQ3AgZQFE9O6; Wed,  7 Apr 2021 20:52:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 728E460A36;
	Wed,  7 Apr 2021 20:52:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 195861BF232
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 20:52:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B77F4027F
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 20:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f6B-xp7Qy1e2 for <devel@linuxdriverproject.org>;
 Wed,  7 Apr 2021 20:51:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0E0D4027A
 for <devel@driverdev.osuosl.org>; Wed,  7 Apr 2021 20:51:59 +0000 (UTC)
IronPort-SDR: TbCqCin7ozn3CXadRunGZ69CB7ub2LbQVXhjBWlsczksnKhGBEYozjwt9DhJPwwD+Xa6W2AEnd
 ac55hH/dnClQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="192935174"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; 
 d="gz'50?scan'50,208,50";a="192935174"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 13:51:49 -0700
IronPort-SDR: vQAnrcgyWrMyHX+FgVSYMQN1uzL3XjN6eeeDl7wJhuaQ4wp2Q5TUhxNZFHWEdexgwOfLa3Oxov
 1jLxOjM40s+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; 
 d="gz'50?scan'50,208,50";a="458520770"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 07 Apr 2021 13:51:47 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lUF9N-000Do9-9V; Wed, 07 Apr 2021 20:51:45 +0000
Date: Thu, 8 Apr 2021 04:51:12 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:tty-test 9/9] drivers/tty/tty_buffer.c:604:40: error:
 'TTY_LOCK_SLAVE' undeclared
Message-ID: <202104080404.4j0zaira-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="OgqxwSJOaUobr8KG"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git tty-test
head:   bb57c5de81c6feaad869acce7c38b1049115ac75
commit: bb57c5de81c6feaad869acce7c38b1049115ac75 [9/9] tty: move some internal tty lock enums and functions out of tty.h
config: sparc64-randconfig-s032-20210407 (attached as .config)
compiler: sparc64-linux-gcc (GCC) 9.3.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # apt-get install sparse
        # sparse version: v0.6.3-279-g6d5d9b42-dirty
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=bb57c5de81c6feaad869acce7c38b1049115ac75
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core tty-test
        git checkout bb57c5de81c6feaad869acce7c38b1049115ac75
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' ARCH=sparc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/spinlock.h:59,
                    from include/linux/wait.h:9,
                    from include/linux/wait_bit.h:8,
                    from include/linux/fs.h:6,
                    from include/linux/tty.h:5,
                    from drivers/tty/tty_buffer.c:8:
   drivers/tty/tty_buffer.c: In function 'tty_buffer_set_lock_subclass':
>> drivers/tty/tty_buffer.c:604:40: error: 'TTY_LOCK_SLAVE' undeclared (first use in this function)
     604 |  lockdep_set_subclass(&port->buf.lock, TTY_LOCK_SLAVE);
         |                                        ^~~~~~~~~~~~~~
   include/linux/lockdep.h:233:71: note: in definition of macro 'lockdep_set_subclass'
     233 |  lockdep_init_map_waits(&(lock)->dep_map, #lock, (lock)->dep_map.key, sub,\
         |                                                                       ^~~
   drivers/tty/tty_buffer.c:604:40: note: each undeclared identifier is reported only once for each function it appears in
     604 |  lockdep_set_subclass(&port->buf.lock, TTY_LOCK_SLAVE);
         |                                        ^~~~~~~~~~~~~~
   include/linux/lockdep.h:233:71: note: in definition of macro 'lockdep_set_subclass'
     233 |  lockdep_init_map_waits(&(lock)->dep_map, #lock, (lock)->dep_map.key, sub,\
         |                                                                       ^~~
--
   In file included from include/linux/spinlock.h:59,
                    from include/linux/wait.h:9,
                    from include/linux/wait_bit.h:8,
                    from include/linux/fs.h:6,
                    from include/linux/tty.h:5,
                    from drivers/tty/tty_mutex.c:2:
   drivers/tty/tty_mutex.c: In function 'tty_set_lock_subclass':
>> drivers/tty/tty_mutex.c:59:43: error: 'TTY_LOCK_SLAVE' undeclared (first use in this function)
      59 |  lockdep_set_subclass(&tty->legacy_mutex, TTY_LOCK_SLAVE);
         |                                           ^~~~~~~~~~~~~~
   include/linux/lockdep.h:233:71: note: in definition of macro 'lockdep_set_subclass'
     233 |  lockdep_init_map_waits(&(lock)->dep_map, #lock, (lock)->dep_map.key, sub,\
         |                                                                       ^~~
   drivers/tty/tty_mutex.c:59:43: note: each undeclared identifier is reported only once for each function it appears in
      59 |  lockdep_set_subclass(&tty->legacy_mutex, TTY_LOCK_SLAVE);
         |                                           ^~~~~~~~~~~~~~
   include/linux/lockdep.h:233:71: note: in definition of macro 'lockdep_set_subclass'
     233 |  lockdep_init_map_waits(&(lock)->dep_map, #lock, (lock)->dep_map.key, sub,\
         |                                                                       ^~~

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for FRAME_POINTER
   Depends on DEBUG_KERNEL && (M68K || UML || SUPERH) || ARCH_WANT_FRAME_POINTERS || MCOUNT
   Selected by
   - LATENCYTOP && DEBUG_KERNEL && STACKTRACE_SUPPORT && PROC_FS && !MIPS && !PPC && !S390 && !MICROBLAZE && !ARM && !ARC && !X86
   - LOCKDEP && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT && !MIPS && !PPC && !ARM && !S390 && !MICROBLAZE && !ARC && !X86


vim +/TTY_LOCK_SLAVE +604 drivers/tty/tty_buffer.c

1d1d14da12e79a Peter Hurley 2015-01-17  600  
1d1d14da12e79a Peter Hurley 2015-01-17  601  /* slave ptys can claim nested buffer lock when handling BRK and INTR */
1d1d14da12e79a Peter Hurley 2015-01-17  602  void tty_buffer_set_lock_subclass(struct tty_port *port)
1d1d14da12e79a Peter Hurley 2015-01-17  603  {
1d1d14da12e79a Peter Hurley 2015-01-17 @604  	lockdep_set_subclass(&port->buf.lock, TTY_LOCK_SLAVE);
1d1d14da12e79a Peter Hurley 2015-01-17  605  }
e176058f0de53c Peter Hurley 2015-10-17  606  

:::::: The code at line 604 was first introduced by commit
:::::: 1d1d14da12e79a6c05fbe1a975401f0f56c93316 pty: Fix buffer flush deadlock

:::::: TO: Peter Hurley <peter@hurleysoftware.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--OgqxwSJOaUobr8KG
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--OgqxwSJOaUobr8KG--


