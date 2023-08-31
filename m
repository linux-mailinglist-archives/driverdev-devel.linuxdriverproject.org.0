Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD1278EF22
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Aug 2023 16:01:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2820B4042D;
	Thu, 31 Aug 2023 14:01:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2820B4042D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UARjCX7_ttIB; Thu, 31 Aug 2023 14:01:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE7E14049E;
	Thu, 31 Aug 2023 14:01:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE7E14049E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C22321BF2FE
 for <devel@linuxdriverproject.org>; Thu, 31 Aug 2023 14:01:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8021834DE
 for <devel@linuxdriverproject.org>; Thu, 31 Aug 2023 14:01:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8021834DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pR4y6y10rSFl for <devel@linuxdriverproject.org>;
 Thu, 31 Aug 2023 14:01:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8BF5B81FC1
 for <devel@driverdev.osuosl.org>; Thu, 31 Aug 2023 14:01:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BF5B81FC1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="366167781"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="366167781"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 06:39:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="739532428"
X-IronPort-AV: E=Sophos;i="6.02,216,1688454000"; d="scan'208";a="739532428"
Received: from lkp-server01.sh.intel.com (HELO 5d8055a4f6aa) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 31 Aug 2023 06:39:51 -0700
Received: from kbuild by 5d8055a4f6aa with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qbhtl-0000Bv-0R;
 Thu, 31 Aug 2023 13:39:49 +0000
Date: Thu, 31 Aug 2023 21:39:11 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 7/7] fs/sysfs/file.c:397:8: warning:
 variable 'uid' is uninitialized when used here
Message-ID: <202308312145.bv4S52ys-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693490499; x=1725026499;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=OfZ7zTbIJkqPsN8qUSYq3+PItW+TPqpQwhSyp4ZYK4M=;
 b=XEk6LXfWJiM9gf6YN3o2mSRTNghilNNrBHCyZCchgwU+ikt1DO+9jg2o
 IUJm6rwZDhgMPZ+jZLPOmp5uUFVcESq6iBG9v3b+YvFUIjNaBiCoKxux4
 viuvHTEaXmeOfYjVeD30IQggbAgV92HfZgex/m9MkFkYCMiIBjErW8WjM
 5aR9rCOrKIbschIPX04wv09gcS7Fu+PncmpnChpSGCl5U41IrHy4DLq0f
 LcRzpFWcx5xiL0CVgo6Z/UWPF60V0GDxheNESMa5ARCwkQ/M3aI+nTisU
 HcPaHBaJOoYYg5IOIIqX6D7s1mYlTw1CQhdQQa934giE74+bU6myzVe32
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XEk6LXfW
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
Cc: devel@driverdev.osuosl.org, llvm@lists.linux.dev,
 Alistair Francis <alistair.francis@wdc.com>, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
head:   2929d17b58d02dcf52d0345fa966c616e09a5afa
commit: 2929d17b58d02dcf52d0345fa966c616e09a5afa [7/7] sysfs: do not create empty directories if no attributes are present
config: i386-randconfig-012-20230831 (https://download.01.org/0day-ci/archive/20230831/202308312145.bv4S52ys-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230831/202308312145.bv4S52ys-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308312145.bv4S52ys-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> fs/sysfs/file.c:397:8: warning: variable 'uid' is uninitialized when used here [-Wuninitialized]
                                             uid, gid, kobj, NULL);
                                             ^~~
   fs/sysfs/file.c:383:2: note: variable 'uid' is declared here
           kuid_t uid;
           ^
>> fs/sysfs/file.c:397:13: warning: variable 'gid' is uninitialized when used here [-Wuninitialized]
                                             uid, gid, kobj, NULL);
                                                  ^~~
   fs/sysfs/file.c:384:2: note: variable 'gid' is declared here
           kgid_t gid;
           ^
   2 warnings generated.


vim +/uid +397 fs/sysfs/file.c

   372	
   373	/**
   374	 * sysfs_add_file_to_group - add an attribute file to a pre-existing group.
   375	 * @kobj: object we're acting for.
   376	 * @attr: attribute descriptor.
   377	 * @group: group name.
   378	 */
   379	int sysfs_add_file_to_group(struct kobject *kobj,
   380			const struct attribute *attr, const char *group)
   381	{
   382		struct kernfs_node *parent;
   383		kuid_t uid;
   384		kgid_t gid;
   385		int error;
   386	
   387		if (group) {
   388			parent = kernfs_find_and_get(kobj->sd, group);
   389		} else {
   390			parent = kobj->sd;
   391			kernfs_get(parent);
   392		}
   393	
   394		if (!parent) {
   395			parent = kernfs_create_dir_ns(kobj->sd, group,
   396						  S_IRWXU | S_IRUGO | S_IXUGO,
 > 397						  uid, gid, kobj, NULL);
   398			if (IS_ERR(parent)) {
   399				if (PTR_ERR(parent) == -EEXIST)
   400					sysfs_warn_dup(kobj->sd, group);
   401				return PTR_ERR(parent);
   402			}
   403	
   404			kernfs_get(parent);
   405		}
   406	
   407		kobject_get_ownership(kobj, &uid, &gid);
   408		error = sysfs_add_file_mode_ns(parent, attr, attr->mode, uid, gid,
   409					       NULL);
   410		kernfs_put(parent);
   411	
   412		return error;
   413	}
   414	EXPORT_SYMBOL_GPL(sysfs_add_file_to_group);
   415	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
