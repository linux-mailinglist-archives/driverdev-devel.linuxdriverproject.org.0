Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BACB7FBDB9
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Nov 2023 16:09:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81B7A6106C;
	Tue, 28 Nov 2023 15:09:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81B7A6106C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ePLQ9gOGDcUD; Tue, 28 Nov 2023 15:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E0B761065;
	Tue, 28 Nov 2023 15:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E0B761065
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AFC2A1BF470
 for <devel@linuxdriverproject.org>; Tue, 28 Nov 2023 15:09:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 85E104167E
 for <devel@linuxdriverproject.org>; Tue, 28 Nov 2023 15:09:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85E104167E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h7ju5LT0t5fm for <devel@linuxdriverproject.org>;
 Tue, 28 Nov 2023 15:09:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F931409FC
 for <devel@driverdev.osuosl.org>; Tue, 28 Nov 2023 15:09:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F931409FC
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="14502297"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="14502297"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 07:08:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="797610032"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="797610032"
Received: from lkp-server01.sh.intel.com (HELO d584ee6ebdcc) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 28 Nov 2023 07:08:54 -0800
Received: from kbuild by d584ee6ebdcc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r7zhj-0007fI-3A;
 Tue, 28 Nov 2023 15:08:51 +0000
Date: Tue, 28 Nov 2023 23:08:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 d488759416ed3adf542abe15a530243bb74dd882
Message-ID: <202311282346.Xkb1oGMM-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701184159; x=1732720159;
 h=date:from:to:cc:subject:message-id;
 bh=3mVVa/3ejDBbCeQ71ghF/qutjSe/RXuXv6kjHiWtd8o=;
 b=IA5yolcr6KfqpWeIxmR18lTQOF3+fuR5+MJZKmlM3txYptlIzZHvJV1z
 6hLD8hJd8jC7GVrRCGSt7FUoxeqOmiJLqcxPNWFFuHF42zlWAlwywokV6
 8HSILOFX2ZyHBANO/rBC1rbJqkZRL2lpJfN4W8PLzOZhMWhBPiCLSYG9F
 PSzdYGXhEf6i7qZ2mwQd4x/fZawS+d7Bg/hyvPAl11/UB9Aut0XEa2hgQ
 F+55GvKmlELH+nNLSIV22gauvHJ/u5/vz6IMFDCwhxdFHs2Y4Wy0Ugf1R
 O9DVyEYuE0Fh3GuJnYJ1fV+6PFN/1LKYPu2ApvEN2+OPIdxvpnWcJIckF
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IA5yolcr
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: d488759416ed3adf542abe15a530243bb74dd882  Staging: rtl8192e: Rename variable TsCommonInfo

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm64-defconfig
|   |-- drivers-gpu-drm-nouveau-nouveau_backlight.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Cannot-understand-file-mga_ioc32.c
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-arg-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-cmd-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-filp-not-described-in-nouveau_compat_ioctl
|   `-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:expecting-prototype-for-Called-whenever-a-bit-process-running-under-a-().-Prototype-was-for-nouveau_compat_ioctl()-instead
|-- csky-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nouveau_backlight.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- csky-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nouveau_backlight.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- loongarch-defconfig
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- mips-allyesconfig
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- nios2-allmodconfig
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- nios2-allyesconfig
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- riscv-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nouveau_backlight.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Cannot-understand-file-mga_ioc32.c
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-arg-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-cmd-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-filp-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:expecting-prototype-for-Called-whenever-a-bit-process-running-under-a-().-Prototype-was-for-nouveau_compat_ioctl()-instead
|   |-- drivers-nvdimm-btt.c:warning:Excess-function-parameter-maxlane-description-in-btt_init
|   |-- drivers-nvdimm-btt.c:warning:Function-parameter-or-member-nd_region-not-described-in-btt_init
|   |-- drivers-nvdimm-core.c:warning:Function-parameter-or-member-len-not-described-in-nd_uuid_store
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-namespace_devs.c:warning:Excess-function-parameter-nspm-description-in-create_namespace_pmem
|   |-- drivers-nvdimm-namespace_devs.c:warning:Function-parameter-or-member-nd_mapping-not-described-in-create_namespace_pmem
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- riscv-defconfig
|   |-- drivers-gpu-drm-nouveau-nouveau_backlight.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Cannot-understand-file-mga_ioc32.c
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-arg-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-cmd-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-filp-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:expecting-prototype-for-Called-whenever-a-bit-process-running-under-a-().-Prototype-was-for-nouveau_compat_ioctl()-instead
|   |-- drivers-nvdimm-btt.c:warning:Excess-function-parameter-maxlane-description-in-btt_init
|   |-- drivers-nvdimm-btt.c:warning:Function-parameter-or-member-nd_region-not-described-in-btt_init
|   |-- drivers-nvdimm-core.c:warning:Function-parameter-or-member-len-not-described-in-nd_uuid_store
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-namespace_devs.c:warning:Excess-function-parameter-nspm-description-in-create_namespace_pmem
|   |-- drivers-nvdimm-namespace_devs.c:warning:Function-parameter-or-member-nd_mapping-not-described-in-create_namespace_pmem
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- s390-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nouveau_backlight.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Cannot-understand-file-mga_ioc32.c
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-arg-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-cmd-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-filp-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:expecting-prototype-for-Called-whenever-a-bit-process-running-under-a-().-Prototype-was-for-nouveau_compat_ioctl()-instead
|   |-- drivers-nvdimm-btt.c:warning:Excess-function-parameter-maxlane-description-in-btt_init
|   |-- drivers-nvdimm-btt.c:warning:Function-parameter-or-member-nd_region-not-described-in-btt_init
|   |-- drivers-nvdimm-core.c:warning:Function-parameter-or-member-len-not-described-in-nd_uuid_store
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-namespace_devs.c:warning:Excess-function-parameter-nspm-description-in-create_namespace_pmem
|   |-- drivers-nvdimm-namespace_devs.c:warning:Function-parameter-or-member-nd_mapping-not-described-in-create_namespace_pmem
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- s390-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nouveau_backlight.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Cannot-understand-file-mga_ioc32.c
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-arg-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-cmd-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-filp-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:expecting-prototype-for-Called-whenever-a-bit-process-running-under-a-().-Prototype-was-for-nouveau_compat_ioctl()-instead
|   |-- drivers-nvdimm-btt.c:warning:Excess-function-parameter-maxlane-description-in-btt_init
|   |-- drivers-nvdimm-btt.c:warning:Function-parameter-or-member-nd_region-not-described-in-btt_init
|   |-- drivers-nvdimm-core.c:warning:Function-parameter-or-member-len-not-described-in-nd_uuid_store
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-namespace_devs.c:warning:Excess-function-parameter-nspm-description-in-create_namespace_pmem
|   |-- drivers-nvdimm-namespace_devs.c:warning:Function-parameter-or-member-nd_mapping-not-described-in-create_namespace_pmem
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- sh-allmodconfig
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- sh-allyesconfig
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- sparc-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nouveau_backlight.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Cannot-understand-file-mga_ioc32.c
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-arg-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-cmd-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-filp-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:expecting-prototype-for-Called-whenever-a-bit-process-running-under-a-().-Prototype-was-for-nouveau_compat_ioctl()-instead
|   |-- drivers-nvdimm-btt.c:warning:Excess-function-parameter-maxlane-description-in-btt_init
|   |-- drivers-nvdimm-btt.c:warning:Function-parameter-or-member-nd_region-not-described-in-btt_init
|   |-- drivers-nvdimm-core.c:warning:Function-parameter-or-member-len-not-described-in-nd_uuid_store
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-namespace_devs.c:warning:Excess-function-parameter-nspm-description-in-create_namespace_pmem
|   |-- drivers-nvdimm-namespace_devs.c:warning:Function-parameter-or-member-nd_mapping-not-described-in-create_namespace_pmem
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- sparc64-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nouveau_backlight.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Cannot-understand-file-mga_ioc32.c
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-arg-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-cmd-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-filp-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:expecting-prototype-for-Called-whenever-a-bit-process-running-under-a-().-Prototype-was-for-nouveau_compat_ioctl()-instead
|   |-- drivers-nvdimm-btt.c:warning:Excess-function-parameter-maxlane-description-in-btt_init
|   |-- drivers-nvdimm-btt.c:warning:Function-parameter-or-member-nd_region-not-described-in-btt_init
|   |-- drivers-nvdimm-core.c:warning:Function-parameter-or-member-len-not-described-in-nd_uuid_store
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-namespace_devs.c:warning:Excess-function-parameter-nspm-description-in-create_namespace_pmem
|   |-- drivers-nvdimm-namespace_devs.c:warning:Function-parameter-or-member-nd_mapping-not-described-in-create_namespace_pmem
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
`-- sparc64-allyesconfig
    |-- drivers-gpu-drm-nouveau-nouveau_backlight.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
    |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Cannot-understand-file-mga_ioc32.c
    |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-arg-not-described-in-nouveau_compat_ioctl
    |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-cmd-not-described-in-nouveau_compat_ioctl
    |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-filp-not-described-in-nouveau_compat_ioctl
    |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:expecting-prototype-for-Called-whenever-a-bit-process-running-under-a-().-Prototype-was-for-nouveau_compat_ioctl()-instead
    |-- drivers-nvdimm-btt.c:warning:Excess-function-parameter-maxlane-description-in-btt_init
    |-- drivers-nvdimm-btt.c:warning:Function-parameter-or-member-nd_region-not-described-in-btt_init
    |-- drivers-nvdimm-core.c:warning:Function-parameter-or-member-len-not-described-in-nd_uuid_store
    |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_allocated_dpa
    |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_init_nsarea
    |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_allocated_dpa
    |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_init_nsarea
    |-- drivers-nvdimm-namespace_devs.c:warning:Excess-function-parameter-nspm-description-in-create_namespace_pmem
    |-- drivers-nvdimm-namespace_devs.c:warning:Function-parameter-or-member-nd_mapping-not-described-in-create_namespace_pmem
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
    `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
clang_recent_errors
|-- arm64-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Cannot-understand-file-mga_ioc32.c
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-arg-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-cmd-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:Function-parameter-or-member-filp-not-described-in-nouveau_compat_ioctl
|   |-- drivers-gpu-drm-nouveau-nouveau_ioc32.c:warning:expecting-prototype-for-Called-whenever-a-bit-process-running-under-a-().-Prototype-was-for-nouveau_compat_ioctl()-instead
|   |-- drivers-nvdimm-btt.c:warning:Excess-function-parameter-maxlane-description-in-btt_init
|   |-- drivers-nvdimm-btt.c:warning:Function-parameter-or-member-nd_region-not-described-in-btt_init
|   |-- drivers-nvdimm-core.c:warning:Function-parameter-or-member-len-not-described-in-nd_uuid_store
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_allocated_dpa
|   |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_init_nsarea
|   |-- drivers-nvdimm-namespace_devs.c:warning:Excess-function-parameter-nspm-description-in-create_namespace_pmem
|   |-- drivers-nvdimm-namespace_devs.c:warning:Function-parameter-or-member-nd_mapping-not-described-in-create_namespace_pmem
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- hexagon-allmodconfig
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- hexagon-allyesconfig
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- i386-allmodconfig
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- i386-allyesconfig
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
|-- riscv-rv32_defconfig
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
|   |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
|   `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create
`-- x86_64-rhel-8.3-rust
    |-- drivers-nvdimm-btt.c:warning:Excess-function-parameter-maxlane-description-in-btt_init
    |-- drivers-nvdimm-btt.c:warning:Function-parameter-or-member-nd_region-not-described-in-btt_init
    |-- drivers-nvdimm-core.c:warning:Function-parameter-or-member-len-not-described-in-nd_uuid_store
    |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_allocated_dpa
    |-- drivers-nvdimm-dimm_devs.c:warning:Excess-function-parameter-nvdimm-description-in-nvdimm_init_nsarea
    |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_allocated_dpa
    |-- drivers-nvdimm-dimm_devs.c:warning:Function-parameter-or-member-ndd-not-described-in-nvdimm_init_nsarea
    |-- drivers-nvdimm-namespace_devs.c:warning:Excess-function-parameter-nspm-description-in-create_namespace_pmem
    |-- drivers-nvdimm-namespace_devs.c:warning:Function-parameter-or-member-nd_mapping-not-described-in-create_namespace_pmem
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_bind
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-address-not-described-in-apparmor_socket_connect
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_bind
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-addrlen-not-described-in-apparmor_socket_connect
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-backlog-not-described-in-apparmor_socket_listen
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_sk_alloc_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-family-not-described-in-apparmor_socket_post_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_sk_alloc_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-flags-not-described-in-apparmor_socket_recvmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-how-not-described-in-apparmor_socket_shutdown
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-kern-not-described-in-apparmor_socket_post_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-len-not-described-in-apparmor_socket_getpeersec_stream
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_getsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-level-not-described-in-apparmor_socket_setsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_recvmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-msg-not-described-in-apparmor_socket_sendmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsk-not-described-in-apparmor_sk_clone_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-newsock-not-described-in-apparmor_socket_accept
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optlen-not-described-in-apparmor_socket_getpeersec_stream
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_getsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optname-not-described-in-apparmor_socket_setsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-optval-not-described-in-apparmor_socket_getpeersec_stream
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-protocol-not-described-in-apparmor_socket_post_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_recvmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-size-not-described-in-apparmor_socket_sendmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_alloc_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_clone_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_sk_free_security
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sk-not-described-in-apparmor_socket_sock_rcv_skb
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-skb-not-described-in-apparmor_socket_sock_rcv_skb
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_accept
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_bind
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_connect
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeername
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getpeersec_stream
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockname
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_getsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_listen
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_post_create
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_recvmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_sendmsg
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_setsockopt
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-sock-not-described-in-apparmor_socket_shutdown
    |-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_create
    `-- security-apparmor-lsm.c:warning:Function-parameter-or-member-type-not-described-in-apparmor_socket_post_create

elapsed time: 1483m

configs tested: 82
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

