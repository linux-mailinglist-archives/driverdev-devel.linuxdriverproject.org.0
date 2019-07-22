Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CA16FA7D
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 09:41:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 44DAF20413;
	Mon, 22 Jul 2019 07:41:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TOgAcanxGBBV; Mon, 22 Jul 2019 07:40:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 07C472041B;
	Mon, 22 Jul 2019 07:40:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 047521BF3AE
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 07:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EA3748798A
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 07:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yJm9yJmZNCKt for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 07:40:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 020718762E
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 07:40:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 00:38:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,294,1559545200"; 
 d="gz'50?scan'50,208,50";a="344341335"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 22 Jul 2019 00:38:50 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hpSuI-0007GJ-FP; Mon, 22 Jul 2019 15:38:50 +0800
Date: Mon, 22 Jul 2019 15:38:35 +0800
From: kbuild test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 26/49] fs/ocfs2/dlmglue.c:3291:30:
 error: void value not ignored as it ought to be
Message-ID: <201907221504.w19xHT8A%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jw2wlx6jeacfixyi"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, kbuild-all@01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--jw2wlx6jeacfixyi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
head:   7ea1b1929a3f463169713ae38bcacf4966e756af
commit: 54d5611ad33f517de1bfe958b22f57822743aebb [26/49] debugfs: remove return value of debugfs_create_u32()
config: x86_64-lkp (attached as .config)
compiler: gcc-7 (Debian 7.4.0-10) 7.4.0
reproduce:
        git checkout 54d5611ad33f517de1bfe958b22f57822743aebb
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   fs/ocfs2/dlmglue.c: In function 'ocfs2_dlm_init_debug':
>> fs/ocfs2/dlmglue.c:3291:30: error: void value not ignored as it ought to be
     dlm_debug->d_locking_filter = debugfs_create_u32("locking_filter",
                                 ^

vim +3291 fs/ocfs2/dlmglue.c

ccd979bdbce9fba Mark Fasheh         2005-12-15  3280  
e581595ea29c737 Greg Kroah-Hartman  2019-07-11  3281  static void ocfs2_dlm_init_debug(struct ocfs2_super *osb)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3282  {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3283  	struct ocfs2_dlm_debug *dlm_debug = osb->osb_dlm_debug;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3284  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3285  	dlm_debug->d_locking_state = debugfs_create_file("locking_state",
ccd979bdbce9fba Mark Fasheh         2005-12-15  3286  							 S_IFREG|S_IRUSR,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3287  							 osb->osb_debug_root,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3288  							 osb,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3289  							 &ocfs2_dlm_debug_fops);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3290  
8056773ac4b42f3 Gang He             2019-07-11 @3291  	dlm_debug->d_locking_filter = debugfs_create_u32("locking_filter",
8056773ac4b42f3 Gang He             2019-07-11  3292  						0600,
8056773ac4b42f3 Gang He             2019-07-11  3293  						osb->osb_debug_root,
8056773ac4b42f3 Gang He             2019-07-11  3294  						&dlm_debug->d_filter_secs);
29b0ea64bda81c7 Greg Kroah-Hartman  2019-01-04  3295  
29b0ea64bda81c7 Greg Kroah-Hartman  2019-01-04  3296  	ocfs2_get_dlm_debug(dlm_debug);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3297  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3298  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3299  static void ocfs2_dlm_shutdown_debug(struct ocfs2_super *osb)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3300  {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3301  	struct ocfs2_dlm_debug *dlm_debug = osb->osb_dlm_debug;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3302  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3303  	if (dlm_debug) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3304  		debugfs_remove(dlm_debug->d_locking_state);
8056773ac4b42f3 Gang He             2019-07-11  3305  		debugfs_remove(dlm_debug->d_locking_filter);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3306  		ocfs2_put_dlm_debug(dlm_debug);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3307  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3308  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3309  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3310  int ocfs2_dlm_init(struct ocfs2_super *osb)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3311  {
c271c5c22b0a7ca Sunil Mushran       2006-12-05  3312  	int status = 0;
4670c46ded9a182 Joel Becker         2008-02-01  3313  	struct ocfs2_cluster_connection *conn = NULL;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3314  
0abd6d1803b01c7 Mark Fasheh         2008-01-29  3315  	if (ocfs2_mount_local(osb)) {
0abd6d1803b01c7 Mark Fasheh         2008-01-29  3316  		osb->node_num = 0;
c271c5c22b0a7ca Sunil Mushran       2006-12-05  3317  		goto local;
0abd6d1803b01c7 Mark Fasheh         2008-01-29  3318  	}
c271c5c22b0a7ca Sunil Mushran       2006-12-05  3319  
e581595ea29c737 Greg Kroah-Hartman  2019-07-11  3320  	ocfs2_dlm_init_debug(osb);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3321  
34d024f84345807 Mark Fasheh         2007-09-24  3322  	/* launch downconvert thread */
5afc44e2e9678c0 Joseph Qi           2015-11-05  3323  	osb->dc_task = kthread_run(ocfs2_downconvert_thread, osb, "ocfs2dc-%s",
5afc44e2e9678c0 Joseph Qi           2015-11-05  3324  			osb->uuid_str);
34d024f84345807 Mark Fasheh         2007-09-24  3325  	if (IS_ERR(osb->dc_task)) {
34d024f84345807 Mark Fasheh         2007-09-24  3326  		status = PTR_ERR(osb->dc_task);
34d024f84345807 Mark Fasheh         2007-09-24  3327  		osb->dc_task = NULL;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3328  		mlog_errno(status);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3329  		goto bail;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3330  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3331  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3332  	/* for now, uuid == domain */
9c6c877c04ce17d Joel Becker         2008-02-01  3333  	status = ocfs2_cluster_connect(osb->osb_cluster_stack,
c74a3bdd9b529d9 Goldwyn Rodrigues   2014-01-21  3334  				       osb->osb_cluster_name,
c74a3bdd9b529d9 Goldwyn Rodrigues   2014-01-21  3335  				       strlen(osb->osb_cluster_name),
9c6c877c04ce17d Joel Becker         2008-02-01  3336  				       osb->uuid_str,
4670c46ded9a182 Joel Becker         2008-02-01  3337  				       strlen(osb->uuid_str),
553b5eb91abd5f8 Joel Becker         2010-01-29  3338  				       &lproto, ocfs2_do_node_down, osb,
4670c46ded9a182 Joel Becker         2008-02-01  3339  				       &conn);
4670c46ded9a182 Joel Becker         2008-02-01  3340  	if (status) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3341  		mlog_errno(status);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3342  		goto bail;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3343  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3344  
3e8341516409d02 Goldwyn Rodrigues   2014-01-21  3345  	status = ocfs2_cluster_this_node(conn, &osb->node_num);
0abd6d1803b01c7 Mark Fasheh         2008-01-29  3346  	if (status < 0) {
0abd6d1803b01c7 Mark Fasheh         2008-01-29  3347  		mlog_errno(status);
0abd6d1803b01c7 Mark Fasheh         2008-01-29  3348  		mlog(ML_ERROR,
0abd6d1803b01c7 Mark Fasheh         2008-01-29  3349  		     "could not find this host's node number\n");
286eaa95c5c5915 Joel Becker         2008-02-01  3350  		ocfs2_cluster_disconnect(conn, 0);
0abd6d1803b01c7 Mark Fasheh         2008-01-29  3351  		goto bail;
0abd6d1803b01c7 Mark Fasheh         2008-01-29  3352  	}
0abd6d1803b01c7 Mark Fasheh         2008-01-29  3353  
c271c5c22b0a7ca Sunil Mushran       2006-12-05  3354  local:
ccd979bdbce9fba Mark Fasheh         2005-12-15  3355  	ocfs2_super_lock_res_init(&osb->osb_super_lockres, osb);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3356  	ocfs2_rename_lock_res_init(&osb->osb_rename_lockres, osb);
6ca497a83e592d6 wengang wang        2009-03-06  3357  	ocfs2_nfs_sync_lock_res_init(&osb->osb_nfs_sync_lockres, osb);
83273932fbefb6c Srinivas Eeda       2009-06-03  3358  	ocfs2_orphan_scan_lock_res_init(&osb->osb_orphan_scan.os_lockres, osb);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3359  
4670c46ded9a182 Joel Becker         2008-02-01  3360  	osb->cconn = conn;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3361  bail:
ccd979bdbce9fba Mark Fasheh         2005-12-15  3362  	if (status < 0) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3363  		ocfs2_dlm_shutdown_debug(osb);
34d024f84345807 Mark Fasheh         2007-09-24  3364  		if (osb->dc_task)
34d024f84345807 Mark Fasheh         2007-09-24  3365  			kthread_stop(osb->dc_task);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3366  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3367  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3368  	return status;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3369  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3370  
286eaa95c5c5915 Joel Becker         2008-02-01  3371  void ocfs2_dlm_shutdown(struct ocfs2_super *osb,
286eaa95c5c5915 Joel Becker         2008-02-01  3372  			int hangup_pending)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3373  {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3374  	ocfs2_drop_osb_locks(osb);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3375  
4670c46ded9a182 Joel Becker         2008-02-01  3376  	/*
4670c46ded9a182 Joel Becker         2008-02-01  3377  	 * Now that we have dropped all locks and ocfs2_dismount_volume()
4670c46ded9a182 Joel Becker         2008-02-01  3378  	 * has disabled recovery, the DLM won't be talking to us.  It's
4670c46ded9a182 Joel Becker         2008-02-01  3379  	 * safe to tear things down before disconnecting the cluster.
4670c46ded9a182 Joel Becker         2008-02-01  3380  	 */
4670c46ded9a182 Joel Becker         2008-02-01  3381  
34d024f84345807 Mark Fasheh         2007-09-24  3382  	if (osb->dc_task) {
34d024f84345807 Mark Fasheh         2007-09-24  3383  		kthread_stop(osb->dc_task);
34d024f84345807 Mark Fasheh         2007-09-24  3384  		osb->dc_task = NULL;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3385  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3386  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3387  	ocfs2_lock_res_free(&osb->osb_super_lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3388  	ocfs2_lock_res_free(&osb->osb_rename_lockres);
6ca497a83e592d6 wengang wang        2009-03-06  3389  	ocfs2_lock_res_free(&osb->osb_nfs_sync_lockres);
83273932fbefb6c Srinivas Eeda       2009-06-03  3390  	ocfs2_lock_res_free(&osb->osb_orphan_scan.os_lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3391  
286eaa95c5c5915 Joel Becker         2008-02-01  3392  	ocfs2_cluster_disconnect(osb->cconn, hangup_pending);
4670c46ded9a182 Joel Becker         2008-02-01  3393  	osb->cconn = NULL;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3394  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3395  	ocfs2_dlm_shutdown_debug(osb);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3396  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3397  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3398  static int ocfs2_drop_lock(struct ocfs2_super *osb,
0d5dc6c2dd7a3cd Mark Fasheh         2006-09-14  3399  			   struct ocfs2_lock_res *lockres)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3400  {
7431cd7e8dd0e46 Joel Becker         2008-02-01  3401  	int ret;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3402  	unsigned long flags;
bd3e76105d4478a Joel Becker         2008-02-01  3403  	u32 lkm_flags = 0;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3404  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3405  	/* We didn't get anywhere near actually using this lockres. */
ccd979bdbce9fba Mark Fasheh         2005-12-15  3406  	if (!(lockres->l_flags & OCFS2_LOCK_INITIALIZED))
ccd979bdbce9fba Mark Fasheh         2005-12-15  3407  		goto out;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3408  
b80fc012e03f8f2 Mark Fasheh         2006-09-12  3409  	if (lockres->l_ops->flags & LOCK_TYPE_USES_LVB)
bd3e76105d4478a Joel Becker         2008-02-01  3410  		lkm_flags |= DLM_LKF_VALBLK;
b80fc012e03f8f2 Mark Fasheh         2006-09-12  3411  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3412  	spin_lock_irqsave(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3413  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3414  	mlog_bug_on_msg(!(lockres->l_flags & OCFS2_LOCK_FREEING),
ccd979bdbce9fba Mark Fasheh         2005-12-15  3415  			"lockres %s, flags 0x%lx\n",
ccd979bdbce9fba Mark Fasheh         2005-12-15  3416  			lockres->l_name, lockres->l_flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3417  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3418  	while (lockres->l_flags & OCFS2_LOCK_BUSY) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3419  		mlog(0, "waiting on busy lock \"%s\": flags = %lx, action = "
ccd979bdbce9fba Mark Fasheh         2005-12-15  3420  		     "%u, unlock_action = %u\n",
ccd979bdbce9fba Mark Fasheh         2005-12-15  3421  		     lockres->l_name, lockres->l_flags, lockres->l_action,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3422  		     lockres->l_unlock_action);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3423  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3424  		spin_unlock_irqrestore(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3425  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3426  		/* XXX: Today we just wait on any busy
ccd979bdbce9fba Mark Fasheh         2005-12-15  3427  		 * locks... Perhaps we need to cancel converts in the
ccd979bdbce9fba Mark Fasheh         2005-12-15  3428  		 * future? */
ccd979bdbce9fba Mark Fasheh         2005-12-15  3429  		ocfs2_wait_on_busy_lock(lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3430  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3431  		spin_lock_irqsave(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3432  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3433  
0d5dc6c2dd7a3cd Mark Fasheh         2006-09-14  3434  	if (lockres->l_ops->flags & LOCK_TYPE_USES_LVB) {
0d5dc6c2dd7a3cd Mark Fasheh         2006-09-14  3435  		if (lockres->l_flags & OCFS2_LOCK_ATTACHED &&
bd3e76105d4478a Joel Becker         2008-02-01  3436  		    lockres->l_level == DLM_LOCK_EX &&
0d5dc6c2dd7a3cd Mark Fasheh         2006-09-14  3437  		    !(lockres->l_flags & OCFS2_LOCK_NEEDS_REFRESH))
0d5dc6c2dd7a3cd Mark Fasheh         2006-09-14  3438  			lockres->l_ops->set_lvb(lockres);
0d5dc6c2dd7a3cd Mark Fasheh         2006-09-14  3439  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3440  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3441  	if (lockres->l_flags & OCFS2_LOCK_BUSY)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3442  		mlog(ML_ERROR, "destroying busy lock: \"%s\"\n",
ccd979bdbce9fba Mark Fasheh         2005-12-15  3443  		     lockres->l_name);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3444  	if (lockres->l_flags & OCFS2_LOCK_BLOCKED)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3445  		mlog(0, "destroying blocked lock: \"%s\"\n", lockres->l_name);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3446  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3447  	if (!(lockres->l_flags & OCFS2_LOCK_ATTACHED)) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3448  		spin_unlock_irqrestore(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3449  		goto out;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3450  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3451  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3452  	lockres_clear_flags(lockres, OCFS2_LOCK_ATTACHED);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3453  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3454  	/* make sure we never get here while waiting for an ast to
ccd979bdbce9fba Mark Fasheh         2005-12-15  3455  	 * fire. */
ccd979bdbce9fba Mark Fasheh         2005-12-15  3456  	BUG_ON(lockres->l_action != OCFS2_AST_INVALID);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3457  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3458  	/* is this necessary? */
ccd979bdbce9fba Mark Fasheh         2005-12-15  3459  	lockres_or_flags(lockres, OCFS2_LOCK_BUSY);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3460  	lockres->l_unlock_action = OCFS2_UNLOCK_DROP_LOCK;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3461  	spin_unlock_irqrestore(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3462  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3463  	mlog(0, "lock %s\n", lockres->l_name);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3464  
a796d2862aed811 Joel Becker         2010-01-28  3465  	ret = ocfs2_dlm_unlock(osb->cconn, &lockres->l_lksb, lkm_flags);
7431cd7e8dd0e46 Joel Becker         2008-02-01  3466  	if (ret) {
7431cd7e8dd0e46 Joel Becker         2008-02-01  3467  		ocfs2_log_dlm_error("ocfs2_dlm_unlock", ret, lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3468  		mlog(ML_ERROR, "lockres flags: %lu\n", lockres->l_flags);
cf0acdcd640e946 Joel Becker         2008-01-29  3469  		ocfs2_dlm_dump_lksb(&lockres->l_lksb);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3470  		BUG();
ccd979bdbce9fba Mark Fasheh         2005-12-15  3471  	}
73ac36ea14fd18e Coly Li             2009-01-07  3472  	mlog(0, "lock %s, successful return from ocfs2_dlm_unlock\n",
ccd979bdbce9fba Mark Fasheh         2005-12-15  3473  	     lockres->l_name);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3474  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3475  	ocfs2_wait_on_busy_lock(lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3476  out:
ccd979bdbce9fba Mark Fasheh         2005-12-15  3477  	return 0;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3478  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3479  
84d86f83f9d0e84 Jan Kara            2014-04-03  3480  static void ocfs2_process_blocked_lock(struct ocfs2_super *osb,
84d86f83f9d0e84 Jan Kara            2014-04-03  3481  				       struct ocfs2_lock_res *lockres);
84d86f83f9d0e84 Jan Kara            2014-04-03  3482  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3483  /* Mark the lockres as being dropped. It will no longer be
ccd979bdbce9fba Mark Fasheh         2005-12-15  3484   * queued if blocking, but we still may have to wait on it
34d024f84345807 Mark Fasheh         2007-09-24  3485   * being dequeued from the downconvert thread before we can consider
ccd979bdbce9fba Mark Fasheh         2005-12-15  3486   * it safe to drop.
ccd979bdbce9fba Mark Fasheh         2005-12-15  3487   *
ccd979bdbce9fba Mark Fasheh         2005-12-15  3488   * You can *not* attempt to call cluster_lock on this lockres anymore. */
84d86f83f9d0e84 Jan Kara            2014-04-03  3489  void ocfs2_mark_lockres_freeing(struct ocfs2_super *osb,
84d86f83f9d0e84 Jan Kara            2014-04-03  3490  				struct ocfs2_lock_res *lockres)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3491  {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3492  	int status;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3493  	struct ocfs2_mask_waiter mw;
84d86f83f9d0e84 Jan Kara            2014-04-03  3494  	unsigned long flags, flags2;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3495  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3496  	ocfs2_init_mask_waiter(&mw);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3497  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3498  	spin_lock_irqsave(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3499  	lockres->l_flags |= OCFS2_LOCK_FREEING;
84d86f83f9d0e84 Jan Kara            2014-04-03  3500  	if (lockres->l_flags & OCFS2_LOCK_QUEUED && current == osb->dc_task) {
84d86f83f9d0e84 Jan Kara            2014-04-03  3501  		/*
84d86f83f9d0e84 Jan Kara            2014-04-03  3502  		 * We know the downconvert is queued but not in progress
84d86f83f9d0e84 Jan Kara            2014-04-03  3503  		 * because we are the downconvert thread and processing
84d86f83f9d0e84 Jan Kara            2014-04-03  3504  		 * different lock. So we can just remove the lock from the
84d86f83f9d0e84 Jan Kara            2014-04-03  3505  		 * queue. This is not only an optimization but also a way
84d86f83f9d0e84 Jan Kara            2014-04-03  3506  		 * to avoid the following deadlock:
84d86f83f9d0e84 Jan Kara            2014-04-03  3507  		 *   ocfs2_dentry_post_unlock()
84d86f83f9d0e84 Jan Kara            2014-04-03  3508  		 *     ocfs2_dentry_lock_put()
84d86f83f9d0e84 Jan Kara            2014-04-03  3509  		 *       ocfs2_drop_dentry_lock()
84d86f83f9d0e84 Jan Kara            2014-04-03  3510  		 *         iput()
84d86f83f9d0e84 Jan Kara            2014-04-03  3511  		 *           ocfs2_evict_inode()
84d86f83f9d0e84 Jan Kara            2014-04-03  3512  		 *             ocfs2_clear_inode()
84d86f83f9d0e84 Jan Kara            2014-04-03  3513  		 *               ocfs2_mark_lockres_freeing()
84d86f83f9d0e84 Jan Kara            2014-04-03  3514  		 *                 ... blocks waiting for OCFS2_LOCK_QUEUED
84d86f83f9d0e84 Jan Kara            2014-04-03  3515  		 *                 since we are the downconvert thread which
84d86f83f9d0e84 Jan Kara            2014-04-03  3516  		 *                 should clear the flag.
84d86f83f9d0e84 Jan Kara            2014-04-03  3517  		 */
84d86f83f9d0e84 Jan Kara            2014-04-03  3518  		spin_unlock_irqrestore(&lockres->l_lock, flags);
84d86f83f9d0e84 Jan Kara            2014-04-03  3519  		spin_lock_irqsave(&osb->dc_task_lock, flags2);
84d86f83f9d0e84 Jan Kara            2014-04-03  3520  		list_del_init(&lockres->l_blocked_list);
84d86f83f9d0e84 Jan Kara            2014-04-03  3521  		osb->blocked_lock_count--;
84d86f83f9d0e84 Jan Kara            2014-04-03  3522  		spin_unlock_irqrestore(&osb->dc_task_lock, flags2);
84d86f83f9d0e84 Jan Kara            2014-04-03  3523  		/*
84d86f83f9d0e84 Jan Kara            2014-04-03  3524  		 * Warn if we recurse into another post_unlock call.  Strictly
84d86f83f9d0e84 Jan Kara            2014-04-03  3525  		 * speaking it isn't a problem but we need to be careful if
84d86f83f9d0e84 Jan Kara            2014-04-03  3526  		 * that happens (stack overflow, deadlocks, ...) so warn if
84d86f83f9d0e84 Jan Kara            2014-04-03  3527  		 * ocfs2 grows a path for which this can happen.
84d86f83f9d0e84 Jan Kara            2014-04-03  3528  		 */
84d86f83f9d0e84 Jan Kara            2014-04-03  3529  		WARN_ON_ONCE(lockres->l_ops->post_unlock);
84d86f83f9d0e84 Jan Kara            2014-04-03  3530  		/* Since the lock is freeing we don't do much in the fn below */
84d86f83f9d0e84 Jan Kara            2014-04-03  3531  		ocfs2_process_blocked_lock(osb, lockres);
84d86f83f9d0e84 Jan Kara            2014-04-03  3532  		return;
84d86f83f9d0e84 Jan Kara            2014-04-03  3533  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3534  	while (lockres->l_flags & OCFS2_LOCK_QUEUED) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3535  		lockres_add_mask_waiter(lockres, &mw, OCFS2_LOCK_QUEUED, 0);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3536  		spin_unlock_irqrestore(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3537  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3538  		mlog(0, "Waiting on lockres %s\n", lockres->l_name);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3539  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3540  		status = ocfs2_wait_for_mask(&mw);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3541  		if (status)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3542  			mlog_errno(status);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3543  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3544  		spin_lock_irqsave(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3545  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3546  	spin_unlock_irqrestore(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3547  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3548  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3549  void ocfs2_simple_drop_lockres(struct ocfs2_super *osb,
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3550  			       struct ocfs2_lock_res *lockres)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3551  {
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3552  	int ret;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3553  
84d86f83f9d0e84 Jan Kara            2014-04-03  3554  	ocfs2_mark_lockres_freeing(osb, lockres);
0d5dc6c2dd7a3cd Mark Fasheh         2006-09-14  3555  	ret = ocfs2_drop_lock(osb, lockres);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3556  	if (ret)
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3557  		mlog_errno(ret);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3558  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3559  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3560  static void ocfs2_drop_osb_locks(struct ocfs2_super *osb)
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3561  {
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3562  	ocfs2_simple_drop_lockres(osb, &osb->osb_super_lockres);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3563  	ocfs2_simple_drop_lockres(osb, &osb->osb_rename_lockres);
6ca497a83e592d6 wengang wang        2009-03-06  3564  	ocfs2_simple_drop_lockres(osb, &osb->osb_nfs_sync_lockres);
83273932fbefb6c Srinivas Eeda       2009-06-03  3565  	ocfs2_simple_drop_lockres(osb, &osb->osb_orphan_scan.os_lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3566  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3567  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3568  int ocfs2_drop_inode_locks(struct inode *inode)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3569  {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3570  	int status, err;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3571  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3572  	/* No need to call ocfs2_mark_lockres_freeing here -
ccd979bdbce9fba Mark Fasheh         2005-12-15  3573  	 * ocfs2_clear_inode has done it for us. */
ccd979bdbce9fba Mark Fasheh         2005-12-15  3574  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3575  	err = ocfs2_drop_lock(OCFS2_SB(inode->i_sb),
500086300e6dc53 Tiger Yang          2007-03-20  3576  			      &OCFS2_I(inode)->ip_open_lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3577  	if (err < 0)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3578  		mlog_errno(err);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3579  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3580  	status = err;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3581  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3582  	err = ocfs2_drop_lock(OCFS2_SB(inode->i_sb),
e63aecb651ba73d Mark Fasheh         2007-10-18  3583  			      &OCFS2_I(inode)->ip_inode_lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3584  	if (err < 0)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3585  		mlog_errno(err);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3586  	if (err < 0 && !status)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3587  		status = err;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3588  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3589  	err = ocfs2_drop_lock(OCFS2_SB(inode->i_sb),
0d5dc6c2dd7a3cd Mark Fasheh         2006-09-14  3590  			      &OCFS2_I(inode)->ip_rw_lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3591  	if (err < 0)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3592  		mlog_errno(err);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3593  	if (err < 0 && !status)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3594  		status = err;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3595  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3596  	return status;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3597  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3598  
de551246e7bc555 Joel Becker         2008-02-01  3599  static unsigned int ocfs2_prepare_downconvert(struct ocfs2_lock_res *lockres,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3600  					      int new_level)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3601  {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3602  	assert_spin_locked(&lockres->l_lock);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3603  
bd3e76105d4478a Joel Becker         2008-02-01  3604  	BUG_ON(lockres->l_blocking <= DLM_LOCK_NL);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3605  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3606  	if (lockres->l_level <= new_level) {
9b915181af0a99f Sunil Mushran       2010-02-26  3607  		mlog(ML_ERROR, "lockres %s, lvl %d <= %d, blcklst %d, mask %d, "
9b915181af0a99f Sunil Mushran       2010-02-26  3608  		     "type %d, flags 0x%lx, hold %d %d, act %d %d, req %d, "
9b915181af0a99f Sunil Mushran       2010-02-26  3609  		     "block %d, pgen %d\n", lockres->l_name, lockres->l_level,
9b915181af0a99f Sunil Mushran       2010-02-26  3610  		     new_level, list_empty(&lockres->l_blocked_list),
9b915181af0a99f Sunil Mushran       2010-02-26  3611  		     list_empty(&lockres->l_mask_waiters), lockres->l_type,
9b915181af0a99f Sunil Mushran       2010-02-26  3612  		     lockres->l_flags, lockres->l_ro_holders,
9b915181af0a99f Sunil Mushran       2010-02-26  3613  		     lockres->l_ex_holders, lockres->l_action,
9b915181af0a99f Sunil Mushran       2010-02-26  3614  		     lockres->l_unlock_action, lockres->l_requested,
9b915181af0a99f Sunil Mushran       2010-02-26  3615  		     lockres->l_blocking, lockres->l_pending_gen);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3616  		BUG();
ccd979bdbce9fba Mark Fasheh         2005-12-15  3617  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3618  
9b915181af0a99f Sunil Mushran       2010-02-26  3619  	mlog(ML_BASTS, "lockres %s, level %d => %d, blocking %d\n",
9b915181af0a99f Sunil Mushran       2010-02-26  3620  	     lockres->l_name, lockres->l_level, new_level, lockres->l_blocking);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3621  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3622  	lockres->l_action = OCFS2_AST_DOWNCONVERT;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3623  	lockres->l_requested = new_level;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3624  	lockres_or_flags(lockres, OCFS2_LOCK_BUSY);
de551246e7bc555 Joel Becker         2008-02-01  3625  	return lockres_set_pending(lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3626  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3627  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3628  static int ocfs2_downconvert_lock(struct ocfs2_super *osb,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3629  				  struct ocfs2_lock_res *lockres,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3630  				  int new_level,
de551246e7bc555 Joel Becker         2008-02-01  3631  				  int lvb,
de551246e7bc555 Joel Becker         2008-02-01  3632  				  unsigned int generation)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3633  {
bd3e76105d4478a Joel Becker         2008-02-01  3634  	int ret;
bd3e76105d4478a Joel Becker         2008-02-01  3635  	u32 dlm_flags = DLM_LKF_CONVERT;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3636  
9b915181af0a99f Sunil Mushran       2010-02-26  3637  	mlog(ML_BASTS, "lockres %s, level %d => %d\n", lockres->l_name,
9b915181af0a99f Sunil Mushran       2010-02-26  3638  	     lockres->l_level, new_level);
9b915181af0a99f Sunil Mushran       2010-02-26  3639  
e7ee2c089e94067 Eric Ren            2017-01-10  3640  	/*
e7ee2c089e94067 Eric Ren            2017-01-10  3641  	 * On DLM_LKF_VALBLK, fsdlm behaves differently with o2cb. It always
e7ee2c089e94067 Eric Ren            2017-01-10  3642  	 * expects DLM_LKF_VALBLK being set if the LKB has LVB, so that
e7ee2c089e94067 Eric Ren            2017-01-10  3643  	 * we can recover correctly from node failure. Otherwise, we may get
793057e1c7272a4 Ingo Molnar         2018-02-28  3644  	 * invalid LVB in LKB, but without DLM_SBF_VALNOTVALID being set.
e7ee2c089e94067 Eric Ren            2017-01-10  3645  	 */
a634644751c4623 Gang He             2018-11-02  3646  	if (ocfs2_userspace_stack(osb) &&
e7ee2c089e94067 Eric Ren            2017-01-10  3647  	    lockres->l_ops->flags & LOCK_TYPE_USES_LVB)
e7ee2c089e94067 Eric Ren            2017-01-10  3648  		lvb = 1;
e7ee2c089e94067 Eric Ren            2017-01-10  3649  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3650  	if (lvb)
bd3e76105d4478a Joel Becker         2008-02-01  3651  		dlm_flags |= DLM_LKF_VALBLK;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3652  
4670c46ded9a182 Joel Becker         2008-02-01  3653  	ret = ocfs2_dlm_lock(osb->cconn,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3654  			     new_level,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3655  			     &lockres->l_lksb,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3656  			     dlm_flags,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3657  			     lockres->l_name,
a796d2862aed811 Joel Becker         2010-01-28  3658  			     OCFS2_LOCK_ID_MAX_LEN - 1);
de551246e7bc555 Joel Becker         2008-02-01  3659  	lockres_clear_pending(lockres, generation, osb);
7431cd7e8dd0e46 Joel Becker         2008-02-01  3660  	if (ret) {
7431cd7e8dd0e46 Joel Becker         2008-02-01  3661  		ocfs2_log_dlm_error("ocfs2_dlm_lock", ret, lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3662  		ocfs2_recover_from_dlm_error(lockres, 1);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3663  		goto bail;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3664  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3665  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3666  	ret = 0;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3667  bail:
ccd979bdbce9fba Mark Fasheh         2005-12-15  3668  	return ret;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3669  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3670  
24ef1815e5e13e5 Joel Becker         2008-01-29  3671  /* returns 1 when the caller should unlock and call ocfs2_dlm_unlock */
ccd979bdbce9fba Mark Fasheh         2005-12-15  3672  static int ocfs2_prepare_cancel_convert(struct ocfs2_super *osb,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3673  				        struct ocfs2_lock_res *lockres)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3674  {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3675  	assert_spin_locked(&lockres->l_lock);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3676  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3677  	if (lockres->l_unlock_action == OCFS2_UNLOCK_CANCEL_CONVERT) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3678  		/* If we're already trying to cancel a lock conversion
ccd979bdbce9fba Mark Fasheh         2005-12-15  3679  		 * then just drop the spinlock and allow the caller to
ccd979bdbce9fba Mark Fasheh         2005-12-15  3680  		 * requeue this lock. */
9b915181af0a99f Sunil Mushran       2010-02-26  3681  		mlog(ML_BASTS, "lockres %s, skip convert\n", lockres->l_name);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3682  		return 0;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3683  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3684  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3685  	/* were we in a convert when we got the bast fire? */
ccd979bdbce9fba Mark Fasheh         2005-12-15  3686  	BUG_ON(lockres->l_action != OCFS2_AST_CONVERT &&
ccd979bdbce9fba Mark Fasheh         2005-12-15  3687  	       lockres->l_action != OCFS2_AST_DOWNCONVERT);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3688  	/* set things up for the unlockast to know to just
ccd979bdbce9fba Mark Fasheh         2005-12-15  3689  	 * clear out the ast_action and unset busy, etc. */
ccd979bdbce9fba Mark Fasheh         2005-12-15  3690  	lockres->l_unlock_action = OCFS2_UNLOCK_CANCEL_CONVERT;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3691  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3692  	mlog_bug_on_msg(!(lockres->l_flags & OCFS2_LOCK_BUSY),
ccd979bdbce9fba Mark Fasheh         2005-12-15  3693  			"lock %s, invalid flags: 0x%lx\n",
ccd979bdbce9fba Mark Fasheh         2005-12-15  3694  			lockres->l_name, lockres->l_flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3695  
9b915181af0a99f Sunil Mushran       2010-02-26  3696  	mlog(ML_BASTS, "lockres %s\n", lockres->l_name);
9b915181af0a99f Sunil Mushran       2010-02-26  3697  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3698  	return 1;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3699  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3700  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3701  static int ocfs2_cancel_convert(struct ocfs2_super *osb,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3702  				struct ocfs2_lock_res *lockres)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3703  {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3704  	int ret;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3705  
4670c46ded9a182 Joel Becker         2008-02-01  3706  	ret = ocfs2_dlm_unlock(osb->cconn, &lockres->l_lksb,
a796d2862aed811 Joel Becker         2010-01-28  3707  			       DLM_LKF_CANCEL);
7431cd7e8dd0e46 Joel Becker         2008-02-01  3708  	if (ret) {
7431cd7e8dd0e46 Joel Becker         2008-02-01  3709  		ocfs2_log_dlm_error("ocfs2_dlm_unlock", ret, lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3710  		ocfs2_recover_from_dlm_error(lockres, 0);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3711  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3712  
9b915181af0a99f Sunil Mushran       2010-02-26  3713  	mlog(ML_BASTS, "lockres %s\n", lockres->l_name);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3714  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3715  	return ret;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3716  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3717  
b5e500e23e53279 Mark Fasheh         2006-09-13  3718  static int ocfs2_unblock_lock(struct ocfs2_super *osb,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3719  			      struct ocfs2_lock_res *lockres,
cc567d89b3af429 Mark Fasheh         2006-09-13  3720  			      struct ocfs2_unblock_ctl *ctl)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3721  {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3722  	unsigned long flags;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3723  	int blocking;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3724  	int new_level;
079b805782f94f4 Sunil Mushran       2010-02-03  3725  	int level;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3726  	int ret = 0;
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3727  	int set_lvb = 0;
de551246e7bc555 Joel Becker         2008-02-01  3728  	unsigned int gen;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3729  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3730  	spin_lock_irqsave(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3731  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3732  recheck:
db0f6ce69776370 Sunil Mushran       2010-02-01  3733  	/*
db0f6ce69776370 Sunil Mushran       2010-02-01  3734  	 * Is it still blocking? If not, we have no more work to do.
db0f6ce69776370 Sunil Mushran       2010-02-01  3735  	 */
db0f6ce69776370 Sunil Mushran       2010-02-01  3736  	if (!(lockres->l_flags & OCFS2_LOCK_BLOCKED)) {
db0f6ce69776370 Sunil Mushran       2010-02-01  3737  		BUG_ON(lockres->l_blocking != DLM_LOCK_NL);
db0f6ce69776370 Sunil Mushran       2010-02-01  3738  		spin_unlock_irqrestore(&lockres->l_lock, flags);
db0f6ce69776370 Sunil Mushran       2010-02-01  3739  		ret = 0;
db0f6ce69776370 Sunil Mushran       2010-02-01  3740  		goto leave;
db0f6ce69776370 Sunil Mushran       2010-02-01  3741  	}
db0f6ce69776370 Sunil Mushran       2010-02-01  3742  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3743  	if (lockres->l_flags & OCFS2_LOCK_BUSY) {
de551246e7bc555 Joel Becker         2008-02-01  3744  		/* XXX
de551246e7bc555 Joel Becker         2008-02-01  3745  		 * This is a *big* race.  The OCFS2_LOCK_PENDING flag
de551246e7bc555 Joel Becker         2008-02-01  3746  		 * exists entirely for one reason - another thread has set
de551246e7bc555 Joel Becker         2008-02-01  3747  		 * OCFS2_LOCK_BUSY, but has *NOT* yet called dlm_lock().
de551246e7bc555 Joel Becker         2008-02-01  3748  		 *
de551246e7bc555 Joel Becker         2008-02-01  3749  		 * If we do ocfs2_cancel_convert() before the other thread
de551246e7bc555 Joel Becker         2008-02-01  3750  		 * calls dlm_lock(), our cancel will do nothing.  We will
de551246e7bc555 Joel Becker         2008-02-01  3751  		 * get no ast, and we will have no way of knowing the
de551246e7bc555 Joel Becker         2008-02-01  3752  		 * cancel failed.  Meanwhile, the other thread will call
de551246e7bc555 Joel Becker         2008-02-01  3753  		 * into dlm_lock() and wait...forever.
de551246e7bc555 Joel Becker         2008-02-01  3754  		 *
de551246e7bc555 Joel Becker         2008-02-01  3755  		 * Why forever?  Because another node has asked for the
de551246e7bc555 Joel Becker         2008-02-01  3756  		 * lock first; that's why we're here in unblock_lock().
de551246e7bc555 Joel Becker         2008-02-01  3757  		 *
de551246e7bc555 Joel Becker         2008-02-01  3758  		 * The solution is OCFS2_LOCK_PENDING.  When PENDING is
de551246e7bc555 Joel Becker         2008-02-01  3759  		 * set, we just requeue the unblock.  Only when the other
de551246e7bc555 Joel Becker         2008-02-01  3760  		 * thread has called dlm_lock() and cleared PENDING will
de551246e7bc555 Joel Becker         2008-02-01  3761  		 * we then cancel their request.
de551246e7bc555 Joel Becker         2008-02-01  3762  		 *
de551246e7bc555 Joel Becker         2008-02-01  3763  		 * All callers of dlm_lock() must set OCFS2_DLM_PENDING
de551246e7bc555 Joel Becker         2008-02-01  3764  		 * at the same time they set OCFS2_DLM_BUSY.  They must
de551246e7bc555 Joel Becker         2008-02-01  3765  		 * clear OCFS2_DLM_PENDING after dlm_lock() returns.
de551246e7bc555 Joel Becker         2008-02-01  3766  		 */
9b915181af0a99f Sunil Mushran       2010-02-26  3767  		if (lockres->l_flags & OCFS2_LOCK_PENDING) {
9b915181af0a99f Sunil Mushran       2010-02-26  3768  			mlog(ML_BASTS, "lockres %s, ReQ: Pending\n",
9b915181af0a99f Sunil Mushran       2010-02-26  3769  			     lockres->l_name);
de551246e7bc555 Joel Becker         2008-02-01  3770  			goto leave_requeue;
9b915181af0a99f Sunil Mushran       2010-02-26  3771  		}
de551246e7bc555 Joel Becker         2008-02-01  3772  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3773  		ctl->requeue = 1;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3774  		ret = ocfs2_prepare_cancel_convert(osb, lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3775  		spin_unlock_irqrestore(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3776  		if (ret) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3777  			ret = ocfs2_cancel_convert(osb, lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3778  			if (ret < 0)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3779  				mlog_errno(ret);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3780  		}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3781  		goto leave;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3782  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3783  
a19128260107f95 Sunil Mushran       2010-01-21  3784  	/*
a19128260107f95 Sunil Mushran       2010-01-21  3785  	 * This prevents livelocks. OCFS2_LOCK_UPCONVERT_FINISHING flag is
a19128260107f95 Sunil Mushran       2010-01-21  3786  	 * set when the ast is received for an upconvert just before the
a19128260107f95 Sunil Mushran       2010-01-21  3787  	 * OCFS2_LOCK_BUSY flag is cleared. Now if the fs received a bast
a19128260107f95 Sunil Mushran       2010-01-21  3788  	 * on the heels of the ast, we want to delay the downconvert just
a19128260107f95 Sunil Mushran       2010-01-21  3789  	 * enough to allow the up requestor to do its task. Because this
a19128260107f95 Sunil Mushran       2010-01-21  3790  	 * lock is in the blocked queue, the lock will be downconverted
a19128260107f95 Sunil Mushran       2010-01-21  3791  	 * as soon as the requestor is done with the lock.
a19128260107f95 Sunil Mushran       2010-01-21  3792  	 */
a19128260107f95 Sunil Mushran       2010-01-21  3793  	if (lockres->l_flags & OCFS2_LOCK_UPCONVERT_FINISHING)
a19128260107f95 Sunil Mushran       2010-01-21  3794  		goto leave_requeue;
a19128260107f95 Sunil Mushran       2010-01-21  3795  
0d74125a6a68d4f Sunil Mushran       2010-01-29  3796  	/*
0d74125a6a68d4f Sunil Mushran       2010-01-29  3797  	 * How can we block and yet be at NL?  We were trying to upconvert
0d74125a6a68d4f Sunil Mushran       2010-01-29  3798  	 * from NL and got canceled.  The code comes back here, and now
0d74125a6a68d4f Sunil Mushran       2010-01-29  3799  	 * we notice and clear BLOCKING.
0d74125a6a68d4f Sunil Mushran       2010-01-29  3800  	 */
0d74125a6a68d4f Sunil Mushran       2010-01-29  3801  	if (lockres->l_level == DLM_LOCK_NL) {
0d74125a6a68d4f Sunil Mushran       2010-01-29  3802  		BUG_ON(lockres->l_ex_holders || lockres->l_ro_holders);
9b915181af0a99f Sunil Mushran       2010-02-26  3803  		mlog(ML_BASTS, "lockres %s, Aborting dc\n", lockres->l_name);
0d74125a6a68d4f Sunil Mushran       2010-01-29  3804  		lockres->l_blocking = DLM_LOCK_NL;
0d74125a6a68d4f Sunil Mushran       2010-01-29  3805  		lockres_clear_flags(lockres, OCFS2_LOCK_BLOCKED);
0d74125a6a68d4f Sunil Mushran       2010-01-29  3806  		spin_unlock_irqrestore(&lockres->l_lock, flags);
0d74125a6a68d4f Sunil Mushran       2010-01-29  3807  		goto leave;
0d74125a6a68d4f Sunil Mushran       2010-01-29  3808  	}
0d74125a6a68d4f Sunil Mushran       2010-01-29  3809  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3810  	/* if we're blocking an exclusive and we have *any* holders,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3811  	 * then requeue. */
bd3e76105d4478a Joel Becker         2008-02-01  3812  	if ((lockres->l_blocking == DLM_LOCK_EX)
9b915181af0a99f Sunil Mushran       2010-02-26  3813  	    && (lockres->l_ex_holders || lockres->l_ro_holders)) {
9b915181af0a99f Sunil Mushran       2010-02-26  3814  		mlog(ML_BASTS, "lockres %s, ReQ: EX/PR Holders %u,%u\n",
9b915181af0a99f Sunil Mushran       2010-02-26  3815  		     lockres->l_name, lockres->l_ex_holders,
9b915181af0a99f Sunil Mushran       2010-02-26  3816  		     lockres->l_ro_holders);
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3817  		goto leave_requeue;
9b915181af0a99f Sunil Mushran       2010-02-26  3818  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3819  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3820  	/* If it's a PR we're blocking, then only
ccd979bdbce9fba Mark Fasheh         2005-12-15  3821  	 * requeue if we've got any EX holders */
bd3e76105d4478a Joel Becker         2008-02-01  3822  	if (lockres->l_blocking == DLM_LOCK_PR &&
9b915181af0a99f Sunil Mushran       2010-02-26  3823  	    lockres->l_ex_holders) {
9b915181af0a99f Sunil Mushran       2010-02-26  3824  		mlog(ML_BASTS, "lockres %s, ReQ: EX Holders %u\n",
9b915181af0a99f Sunil Mushran       2010-02-26  3825  		     lockres->l_name, lockres->l_ex_holders);
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3826  		goto leave_requeue;
9b915181af0a99f Sunil Mushran       2010-02-26  3827  	}
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3828  
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3829  	/*
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3830  	 * Can we get a lock in this state if the holder counts are
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3831  	 * zero? The meta data unblock code used to check this.
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3832  	 */
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3833  	if ((lockres->l_ops->flags & LOCK_TYPE_REQUIRES_REFRESH)
9b915181af0a99f Sunil Mushran       2010-02-26  3834  	    && (lockres->l_flags & OCFS2_LOCK_REFRESHING)) {
9b915181af0a99f Sunil Mushran       2010-02-26  3835  		mlog(ML_BASTS, "lockres %s, ReQ: Lock Refreshing\n",
9b915181af0a99f Sunil Mushran       2010-02-26  3836  		     lockres->l_name);
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3837  		goto leave_requeue;
9b915181af0a99f Sunil Mushran       2010-02-26  3838  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3839  
16d5b9567ad5241 Mark Fasheh         2006-09-13  3840  	new_level = ocfs2_highest_compat_lock_level(lockres->l_blocking);
16d5b9567ad5241 Mark Fasheh         2006-09-13  3841  
16d5b9567ad5241 Mark Fasheh         2006-09-13  3842  	if (lockres->l_ops->check_downconvert
9b915181af0a99f Sunil Mushran       2010-02-26  3843  	    && !lockres->l_ops->check_downconvert(lockres, new_level)) {
9b915181af0a99f Sunil Mushran       2010-02-26  3844  		mlog(ML_BASTS, "lockres %s, ReQ: Checkpointing\n",
9b915181af0a99f Sunil Mushran       2010-02-26  3845  		     lockres->l_name);
16d5b9567ad5241 Mark Fasheh         2006-09-13  3846  		goto leave_requeue;
9b915181af0a99f Sunil Mushran       2010-02-26  3847  	}
16d5b9567ad5241 Mark Fasheh         2006-09-13  3848  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3849  	/* If we get here, then we know that there are no more
ccd979bdbce9fba Mark Fasheh         2005-12-15  3850  	 * incompatible holders (and anyone asking for an incompatible
ccd979bdbce9fba Mark Fasheh         2005-12-15  3851  	 * lock is blocked). We can now downconvert the lock */
cc567d89b3af429 Mark Fasheh         2006-09-13  3852  	if (!lockres->l_ops->downconvert_worker)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3853  		goto downconvert;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3854  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3855  	/* Some lockres types want to do a bit of work before
ccd979bdbce9fba Mark Fasheh         2005-12-15  3856  	 * downconverting a lock. Allow that here. The worker function
ccd979bdbce9fba Mark Fasheh         2005-12-15  3857  	 * may sleep, so we save off a copy of what we're blocking as
ccd979bdbce9fba Mark Fasheh         2005-12-15  3858  	 * it may change while we're not holding the spin lock. */
ccd979bdbce9fba Mark Fasheh         2005-12-15  3859  	blocking = lockres->l_blocking;
079b805782f94f4 Sunil Mushran       2010-02-03  3860  	level = lockres->l_level;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3861  	spin_unlock_irqrestore(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3862  
cc567d89b3af429 Mark Fasheh         2006-09-13  3863  	ctl->unblock_action = lockres->l_ops->downconvert_worker(lockres, blocking);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3864  
9b915181af0a99f Sunil Mushran       2010-02-26  3865  	if (ctl->unblock_action == UNBLOCK_STOP_POST) {
9b915181af0a99f Sunil Mushran       2010-02-26  3866  		mlog(ML_BASTS, "lockres %s, UNBLOCK_STOP_POST\n",
9b915181af0a99f Sunil Mushran       2010-02-26  3867  		     lockres->l_name);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3868  		goto leave;
9b915181af0a99f Sunil Mushran       2010-02-26  3869  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3870  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3871  	spin_lock_irqsave(&lockres->l_lock, flags);
079b805782f94f4 Sunil Mushran       2010-02-03  3872  	if ((blocking != lockres->l_blocking) || (level != lockres->l_level)) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3873  		/* If this changed underneath us, then we can't drop
ccd979bdbce9fba Mark Fasheh         2005-12-15  3874  		 * it just yet. */
9b915181af0a99f Sunil Mushran       2010-02-26  3875  		mlog(ML_BASTS, "lockres %s, block=%d:%d, level=%d:%d, "
9b915181af0a99f Sunil Mushran       2010-02-26  3876  		     "Recheck\n", lockres->l_name, blocking,
9b915181af0a99f Sunil Mushran       2010-02-26  3877  		     lockres->l_blocking, level, lockres->l_level);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3878  		goto recheck;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3879  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3880  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3881  downconvert:
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3882  	ctl->requeue = 0;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3883  
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3884  	if (lockres->l_ops->flags & LOCK_TYPE_USES_LVB) {
bd3e76105d4478a Joel Becker         2008-02-01  3885  		if (lockres->l_level == DLM_LOCK_EX)
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3886  			set_lvb = 1;
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3887  
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3888  		/*
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3889  		 * We only set the lvb if the lock has been fully
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3890  		 * refreshed - otherwise we risk setting stale
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3891  		 * data. Otherwise, there's no need to actually clear
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3892  		 * out the lvb here as it's value is still valid.
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3893  		 */
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3894  		if (set_lvb && !(lockres->l_flags & OCFS2_LOCK_NEEDS_REFRESH))
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3895  			lockres->l_ops->set_lvb(lockres);
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3896  	}
5ef0d4ea0877409 Mark Fasheh         2006-09-13  3897  
de551246e7bc555 Joel Becker         2008-02-01  3898  	gen = ocfs2_prepare_downconvert(lockres, new_level);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3899  	spin_unlock_irqrestore(&lockres->l_lock, flags);
de551246e7bc555 Joel Becker         2008-02-01  3900  	ret = ocfs2_downconvert_lock(osb, lockres, new_level, set_lvb,
de551246e7bc555 Joel Becker         2008-02-01  3901  				     gen);
de551246e7bc555 Joel Becker         2008-02-01  3902  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3903  leave:
c1e8d35ef5ffb39 Tao Ma              2011-03-07  3904  	if (ret)
c1e8d35ef5ffb39 Tao Ma              2011-03-07  3905  		mlog_errno(ret);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3906  	return ret;
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3907  
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3908  leave_requeue:
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3909  	spin_unlock_irqrestore(&lockres->l_lock, flags);
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3910  	ctl->requeue = 1;
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3911  
f7fbfdd1fc91543 Mark Fasheh         2006-09-13  3912  	return 0;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3913  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3914  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3915  static int ocfs2_data_convert_worker(struct ocfs2_lock_res *lockres,
ccd979bdbce9fba Mark Fasheh         2005-12-15  3916  				     int blocking)
ccd979bdbce9fba Mark Fasheh         2005-12-15  3917  {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3918  	struct inode *inode;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3919  	struct address_space *mapping;
5e98d492406818e Goldwyn Rodrigues   2010-06-28  3920  	struct ocfs2_inode_info *oi;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3921  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3922         	inode = ocfs2_lock_res_inode(lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3923  	mapping = inode->i_mapping;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3924  
5e98d492406818e Goldwyn Rodrigues   2010-06-28  3925  	if (S_ISDIR(inode->i_mode)) {
5e98d492406818e Goldwyn Rodrigues   2010-06-28  3926  		oi = OCFS2_I(inode);
5e98d492406818e Goldwyn Rodrigues   2010-06-28  3927  		oi->ip_dir_lock_gen++;
5e98d492406818e Goldwyn Rodrigues   2010-06-28  3928  		mlog(0, "generation: %u\n", oi->ip_dir_lock_gen);
5e98d492406818e Goldwyn Rodrigues   2010-06-28  3929  		goto out;
5e98d492406818e Goldwyn Rodrigues   2010-06-28  3930  	}
5e98d492406818e Goldwyn Rodrigues   2010-06-28  3931  
1044e401af9a309 Mark Fasheh         2008-02-28  3932  	if (!S_ISREG(inode->i_mode))
f1f540688eae66c Mark Fasheh         2007-10-18  3933  		goto out;
f1f540688eae66c Mark Fasheh         2007-10-18  3934  
7f4a2a97e324e8c Mark Fasheh         2006-12-11  3935  	/*
7f4a2a97e324e8c Mark Fasheh         2006-12-11  3936  	 * We need this before the filemap_fdatawrite() so that it can
7f4a2a97e324e8c Mark Fasheh         2006-12-11  3937  	 * transfer the dirty bit from the PTE to the
7f4a2a97e324e8c Mark Fasheh         2006-12-11  3938  	 * page. Unfortunately this means that even for EX->PR
7f4a2a97e324e8c Mark Fasheh         2006-12-11  3939  	 * downconverts, we'll lose our mappings and have to build
7f4a2a97e324e8c Mark Fasheh         2006-12-11  3940  	 * them up again.
7f4a2a97e324e8c Mark Fasheh         2006-12-11  3941  	 */
7f4a2a97e324e8c Mark Fasheh         2006-12-11  3942  	unmap_mapping_range(mapping, 0, 0, 0);
7f4a2a97e324e8c Mark Fasheh         2006-12-11  3943  
ccd979bdbce9fba Mark Fasheh         2005-12-15  3944  	if (filemap_fdatawrite(mapping)) {
b0697053f9e8de9 Mark Fasheh         2006-03-03  3945  		mlog(ML_ERROR, "Could not sync inode %llu for downconvert!",
b0697053f9e8de9 Mark Fasheh         2006-03-03  3946  		     (unsigned long long)OCFS2_I(inode)->ip_blkno);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3947  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3948  	sync_mapping_buffers(mapping);
bd3e76105d4478a Joel Becker         2008-02-01  3949  	if (blocking == DLM_LOCK_EX) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3950  		truncate_inode_pages(mapping, 0);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3951  	} else {
ccd979bdbce9fba Mark Fasheh         2005-12-15  3952  		/* We only need to wait on the I/O if we're not also
ccd979bdbce9fba Mark Fasheh         2005-12-15  3953  		 * truncating pages because truncate_inode_pages waits
ccd979bdbce9fba Mark Fasheh         2005-12-15  3954  		 * for us above. We don't truncate pages if we're
ccd979bdbce9fba Mark Fasheh         2005-12-15  3955  		 * blocking anything < EXMODE because we want to keep
ccd979bdbce9fba Mark Fasheh         2005-12-15  3956  		 * them around in that case. */
ccd979bdbce9fba Mark Fasheh         2005-12-15  3957  		filemap_fdatawait(mapping);
ccd979bdbce9fba Mark Fasheh         2005-12-15  3958  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  3959  
b8a7a3a6674725d Andreas Gruenbacher 2016-03-24  3960  	forget_all_cached_acls(inode);
b8a7a3a6674725d Andreas Gruenbacher 2016-03-24  3961  
f1f540688eae66c Mark Fasheh         2007-10-18  3962  out:
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3963  	return UNBLOCK_CONTINUE;
ccd979bdbce9fba Mark Fasheh         2005-12-15  3964  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  3965  
a433848132d8cdf Tao Ma              2009-08-18  3966  static int ocfs2_ci_checkpointed(struct ocfs2_caching_info *ci,
a433848132d8cdf Tao Ma              2009-08-18  3967  				 struct ocfs2_lock_res *lockres,
810d5aeba18825c Mark Fasheh         2006-09-13  3968  				 int new_level)
810d5aeba18825c Mark Fasheh         2006-09-13  3969  {
a433848132d8cdf Tao Ma              2009-08-18  3970  	int checkpointed = ocfs2_ci_fully_checkpointed(ci);
810d5aeba18825c Mark Fasheh         2006-09-13  3971  
bd3e76105d4478a Joel Becker         2008-02-01  3972  	BUG_ON(new_level != DLM_LOCK_NL && new_level != DLM_LOCK_PR);
bd3e76105d4478a Joel Becker         2008-02-01  3973  	BUG_ON(lockres->l_level != DLM_LOCK_EX && !checkpointed);
810d5aeba18825c Mark Fasheh         2006-09-13  3974  
810d5aeba18825c Mark Fasheh         2006-09-13  3975  	if (checkpointed)
810d5aeba18825c Mark Fasheh         2006-09-13  3976  		return 1;
810d5aeba18825c Mark Fasheh         2006-09-13  3977  
a433848132d8cdf Tao Ma              2009-08-18  3978  	ocfs2_start_checkpoint(OCFS2_SB(ocfs2_metadata_cache_get_super(ci)));
810d5aeba18825c Mark Fasheh         2006-09-13  3979  	return 0;
810d5aeba18825c Mark Fasheh         2006-09-13  3980  }
810d5aeba18825c Mark Fasheh         2006-09-13  3981  
a433848132d8cdf Tao Ma              2009-08-18  3982  static int ocfs2_check_meta_downconvert(struct ocfs2_lock_res *lockres,
a433848132d8cdf Tao Ma              2009-08-18  3983  					int new_level)
a433848132d8cdf Tao Ma              2009-08-18  3984  {
a433848132d8cdf Tao Ma              2009-08-18  3985  	struct inode *inode = ocfs2_lock_res_inode(lockres);
a433848132d8cdf Tao Ma              2009-08-18  3986  
a433848132d8cdf Tao Ma              2009-08-18  3987  	return ocfs2_ci_checkpointed(INODE_CACHE(inode), lockres, new_level);
a433848132d8cdf Tao Ma              2009-08-18  3988  }
a433848132d8cdf Tao Ma              2009-08-18  3989  
810d5aeba18825c Mark Fasheh         2006-09-13  3990  static void ocfs2_set_meta_lvb(struct ocfs2_lock_res *lockres)
810d5aeba18825c Mark Fasheh         2006-09-13  3991  {
810d5aeba18825c Mark Fasheh         2006-09-13  3992  	struct inode *inode = ocfs2_lock_res_inode(lockres);
810d5aeba18825c Mark Fasheh         2006-09-13  3993  
810d5aeba18825c Mark Fasheh         2006-09-13  3994  	__ocfs2_stuff_meta_lvb(inode);
810d5aeba18825c Mark Fasheh         2006-09-13  3995  }
810d5aeba18825c Mark Fasheh         2006-09-13  3996  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3997  /*
d680efe9d8fe0eb Mark Fasheh         2006-09-08  3998   * Does the final reference drop on our dentry lock. Right now this
34d024f84345807 Mark Fasheh         2007-09-24  3999   * happens in the downconvert thread, but we could choose to simplify the
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4000   * dlmglue API and push these off to the ocfs2_wq in the future.
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4001   */
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4002  static void ocfs2_dentry_post_unlock(struct ocfs2_super *osb,
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4003  				     struct ocfs2_lock_res *lockres)
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4004  {
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4005  	struct ocfs2_dentry_lock *dl = ocfs2_lock_res_dl(lockres);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4006  	ocfs2_dentry_lock_put(osb, dl);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4007  }
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4008  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4009  /*
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4010   * d_delete() matching dentries before the lock downconvert.
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4011   *
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4012   * At this point, any process waiting to destroy the
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4013   * dentry_lock due to last ref count is stopped by the
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4014   * OCFS2_LOCK_QUEUED flag.
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4015   *
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4016   * We have two potential problems
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4017   *
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4018   * 1) If we do the last reference drop on our dentry_lock (via dput)
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4019   *    we'll wind up in ocfs2_release_dentry_lock(), waiting on
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4020   *    the downconvert to finish. Instead we take an elevated
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4021   *    reference and push the drop until after we've completed our
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4022   *    unblock processing.
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4023   *
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4024   * 2) There might be another process with a final reference,
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4025   *    waiting on us to finish processing. If this is the case, we
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4026   *    detect it and exit out - there's no more dentries anyway.
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4027   */
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4028  static int ocfs2_dentry_convert_worker(struct ocfs2_lock_res *lockres,
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4029  				       int blocking)
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4030  {
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4031  	struct ocfs2_dentry_lock *dl = ocfs2_lock_res_dl(lockres);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4032  	struct ocfs2_inode_info *oi = OCFS2_I(dl->dl_inode);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4033  	struct dentry *dentry;
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4034  	unsigned long flags;
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4035  	int extra_ref = 0;
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4036  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4037  	/*
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4038  	 * This node is blocking another node from getting a read
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4039  	 * lock. This happens when we've renamed within a
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4040  	 * directory. We've forced the other nodes to d_delete(), but
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4041  	 * we never actually dropped our lock because it's still
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4042  	 * valid. The downconvert code will retain a PR for this node,
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4043  	 * so there's no further work to do.
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4044  	 */
bd3e76105d4478a Joel Becker         2008-02-01  4045  	if (blocking == DLM_LOCK_PR)
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4046  		return UNBLOCK_CONTINUE;
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4047  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4048  	/*
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4049  	 * Mark this inode as potentially orphaned. The code in
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4050  	 * ocfs2_delete_inode() will figure out whether it actually
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4051  	 * needs to be freed or not.
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4052  	 */
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4053  	spin_lock(&oi->ip_lock);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4054  	oi->ip_flags |= OCFS2_INODE_MAYBE_ORPHANED;
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4055  	spin_unlock(&oi->ip_lock);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4056  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4057  	/*
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4058  	 * Yuck. We need to make sure however that the check of
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4059  	 * OCFS2_LOCK_FREEING and the extra reference are atomic with
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4060  	 * respect to a reference decrement or the setting of that
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4061  	 * flag.
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4062  	 */
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4063  	spin_lock_irqsave(&lockres->l_lock, flags);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4064  	spin_lock(&dentry_attach_lock);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4065  	if (!(lockres->l_flags & OCFS2_LOCK_FREEING)
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4066  	    && dl->dl_count) {
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4067  		dl->dl_count++;
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4068  		extra_ref = 1;
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4069  	}
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4070  	spin_unlock(&dentry_attach_lock);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4071  	spin_unlock_irqrestore(&lockres->l_lock, flags);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4072  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4073  	mlog(0, "extra_ref = %d\n", extra_ref);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4074  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4075  	/*
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4076  	 * We have a process waiting on us in ocfs2_dentry_iput(),
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4077  	 * which means we can't have any more outstanding
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4078  	 * aliases. There's no need to do any more work.
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4079  	 */
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4080  	if (!extra_ref)
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4081  		return UNBLOCK_CONTINUE;
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4082  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4083  	spin_lock(&dentry_attach_lock);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4084  	while (1) {
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4085  		dentry = ocfs2_find_local_alias(dl->dl_inode,
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4086  						dl->dl_parent_blkno, 1);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4087  		if (!dentry)
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4088  			break;
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4089  		spin_unlock(&dentry_attach_lock);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4090  
10ab88117d069a5 alex chen           2015-02-10  4091  		if (S_ISDIR(dl->dl_inode->i_mode))
10ab88117d069a5 alex chen           2015-02-10  4092  			shrink_dcache_parent(dentry);
10ab88117d069a5 alex chen           2015-02-10  4093  
a455589f181e604 Al Viro             2014-10-21  4094  		mlog(0, "d_delete(%pd);\n", dentry);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4095  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4096  		/*
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4097  		 * The following dcache calls may do an
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4098  		 * iput(). Normally we don't want that from the
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4099  		 * downconverting thread, but in this case it's ok
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4100  		 * because the requesting node already has an
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4101  		 * exclusive lock on the inode, so it can't be queued
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4102  		 * for a downconvert.
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4103  		 */
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4104  		d_delete(dentry);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4105  		dput(dentry);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4106  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4107  		spin_lock(&dentry_attach_lock);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4108  	}
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4109  	spin_unlock(&dentry_attach_lock);
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4110  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4111  	/*
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4112  	 * If we are the last holder of this dentry lock, there is no
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4113  	 * reason to downconvert so skip straight to the unlock.
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4114  	 */
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4115  	if (dl->dl_count == 1)
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4116  		return UNBLOCK_STOP_POST;
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4117  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4118  	return UNBLOCK_CONTINUE_POST;
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4119  }
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4120  
8dec98edfe9684c Tao Ma              2009-08-18  4121  static int ocfs2_check_refcount_downconvert(struct ocfs2_lock_res *lockres,
8dec98edfe9684c Tao Ma              2009-08-18  4122  					    int new_level)
8dec98edfe9684c Tao Ma              2009-08-18  4123  {
8dec98edfe9684c Tao Ma              2009-08-18  4124  	struct ocfs2_refcount_tree *tree =
8dec98edfe9684c Tao Ma              2009-08-18  4125  				ocfs2_lock_res_refcount_tree(lockres);
8dec98edfe9684c Tao Ma              2009-08-18  4126  
8dec98edfe9684c Tao Ma              2009-08-18  4127  	return ocfs2_ci_checkpointed(&tree->rf_ci, lockres, new_level);
8dec98edfe9684c Tao Ma              2009-08-18  4128  }
8dec98edfe9684c Tao Ma              2009-08-18  4129  
8dec98edfe9684c Tao Ma              2009-08-18  4130  static int ocfs2_refcount_convert_worker(struct ocfs2_lock_res *lockres,
8dec98edfe9684c Tao Ma              2009-08-18  4131  					 int blocking)
8dec98edfe9684c Tao Ma              2009-08-18  4132  {
8dec98edfe9684c Tao Ma              2009-08-18  4133  	struct ocfs2_refcount_tree *tree =
8dec98edfe9684c Tao Ma              2009-08-18  4134  				ocfs2_lock_res_refcount_tree(lockres);
8dec98edfe9684c Tao Ma              2009-08-18  4135  
8dec98edfe9684c Tao Ma              2009-08-18  4136  	ocfs2_metadata_cache_purge(&tree->rf_ci);
8dec98edfe9684c Tao Ma              2009-08-18  4137  
8dec98edfe9684c Tao Ma              2009-08-18  4138  	return UNBLOCK_CONTINUE;
8dec98edfe9684c Tao Ma              2009-08-18  4139  }
8dec98edfe9684c Tao Ma              2009-08-18  4140  
9e33d69f553aaf1 Jan Kara            2008-08-25  4141  static void ocfs2_set_qinfo_lvb(struct ocfs2_lock_res *lockres)
9e33d69f553aaf1 Jan Kara            2008-08-25  4142  {
9e33d69f553aaf1 Jan Kara            2008-08-25  4143  	struct ocfs2_qinfo_lvb *lvb;
9e33d69f553aaf1 Jan Kara            2008-08-25  4144  	struct ocfs2_mem_dqinfo *oinfo = ocfs2_lock_res_qinfo(lockres);
9e33d69f553aaf1 Jan Kara            2008-08-25  4145  	struct mem_dqinfo *info = sb_dqinfo(oinfo->dqi_gi.dqi_sb,
9e33d69f553aaf1 Jan Kara            2008-08-25  4146  					    oinfo->dqi_gi.dqi_type);
9e33d69f553aaf1 Jan Kara            2008-08-25  4147  
a641dc2a5a1445e Mark Fasheh         2008-12-24  4148  	lvb = ocfs2_dlm_lvb(&lockres->l_lksb);
9e33d69f553aaf1 Jan Kara            2008-08-25  4149  	lvb->lvb_version = OCFS2_QINFO_LVB_VERSION;
9e33d69f553aaf1 Jan Kara            2008-08-25  4150  	lvb->lvb_bgrace = cpu_to_be32(info->dqi_bgrace);
9e33d69f553aaf1 Jan Kara            2008-08-25  4151  	lvb->lvb_igrace = cpu_to_be32(info->dqi_igrace);
9e33d69f553aaf1 Jan Kara            2008-08-25  4152  	lvb->lvb_syncms = cpu_to_be32(oinfo->dqi_syncms);
9e33d69f553aaf1 Jan Kara            2008-08-25  4153  	lvb->lvb_blocks = cpu_to_be32(oinfo->dqi_gi.dqi_blocks);
9e33d69f553aaf1 Jan Kara            2008-08-25  4154  	lvb->lvb_free_blk = cpu_to_be32(oinfo->dqi_gi.dqi_free_blk);
9e33d69f553aaf1 Jan Kara            2008-08-25  4155  	lvb->lvb_free_entry = cpu_to_be32(oinfo->dqi_gi.dqi_free_entry);
9e33d69f553aaf1 Jan Kara            2008-08-25  4156  }
9e33d69f553aaf1 Jan Kara            2008-08-25  4157  
9e33d69f553aaf1 Jan Kara            2008-08-25  4158  void ocfs2_qinfo_unlock(struct ocfs2_mem_dqinfo *oinfo, int ex)
9e33d69f553aaf1 Jan Kara            2008-08-25  4159  {
9e33d69f553aaf1 Jan Kara            2008-08-25  4160  	struct ocfs2_lock_res *lockres = &oinfo->dqi_gqlock;
9e33d69f553aaf1 Jan Kara            2008-08-25  4161  	struct ocfs2_super *osb = OCFS2_SB(oinfo->dqi_gi.dqi_sb);
9e33d69f553aaf1 Jan Kara            2008-08-25  4162  	int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
9e33d69f553aaf1 Jan Kara            2008-08-25  4163  
9e33d69f553aaf1 Jan Kara            2008-08-25  4164  	if (!ocfs2_is_hard_readonly(osb) && !ocfs2_mount_local(osb))
9e33d69f553aaf1 Jan Kara            2008-08-25  4165  		ocfs2_cluster_unlock(osb, lockres, level);
9e33d69f553aaf1 Jan Kara            2008-08-25  4166  }
9e33d69f553aaf1 Jan Kara            2008-08-25  4167  
9e33d69f553aaf1 Jan Kara            2008-08-25  4168  static int ocfs2_refresh_qinfo(struct ocfs2_mem_dqinfo *oinfo)
9e33d69f553aaf1 Jan Kara            2008-08-25  4169  {
9e33d69f553aaf1 Jan Kara            2008-08-25  4170  	struct mem_dqinfo *info = sb_dqinfo(oinfo->dqi_gi.dqi_sb,
9e33d69f553aaf1 Jan Kara            2008-08-25  4171  					    oinfo->dqi_gi.dqi_type);
9e33d69f553aaf1 Jan Kara            2008-08-25  4172  	struct ocfs2_lock_res *lockres = &oinfo->dqi_gqlock;
9e33d69f553aaf1 Jan Kara            2008-08-25  4173  	struct ocfs2_qinfo_lvb *lvb = ocfs2_dlm_lvb(&lockres->l_lksb);
85eb8b73d66530b Joel Becker         2008-11-25  4174  	struct buffer_head *bh = NULL;
9e33d69f553aaf1 Jan Kara            2008-08-25  4175  	struct ocfs2_global_disk_dqinfo *gdinfo;
9e33d69f553aaf1 Jan Kara            2008-08-25  4176  	int status = 0;
9e33d69f553aaf1 Jan Kara            2008-08-25  4177  
1c520dfbf391e16 Joel Becker         2009-06-19  4178  	if (ocfs2_dlm_lvb_valid(&lockres->l_lksb) &&
1c520dfbf391e16 Joel Becker         2009-06-19  4179  	    lvb->lvb_version == OCFS2_QINFO_LVB_VERSION) {
9e33d69f553aaf1 Jan Kara            2008-08-25  4180  		info->dqi_bgrace = be32_to_cpu(lvb->lvb_bgrace);
9e33d69f553aaf1 Jan Kara            2008-08-25  4181  		info->dqi_igrace = be32_to_cpu(lvb->lvb_igrace);
9e33d69f553aaf1 Jan Kara            2008-08-25  4182  		oinfo->dqi_syncms = be32_to_cpu(lvb->lvb_syncms);
9e33d69f553aaf1 Jan Kara            2008-08-25  4183  		oinfo->dqi_gi.dqi_blocks = be32_to_cpu(lvb->lvb_blocks);
9e33d69f553aaf1 Jan Kara            2008-08-25  4184  		oinfo->dqi_gi.dqi_free_blk = be32_to_cpu(lvb->lvb_free_blk);
9e33d69f553aaf1 Jan Kara            2008-08-25  4185  		oinfo->dqi_gi.dqi_free_entry =
9e33d69f553aaf1 Jan Kara            2008-08-25  4186  					be32_to_cpu(lvb->lvb_free_entry);
9e33d69f553aaf1 Jan Kara            2008-08-25  4187  	} else {
ae4f6ef13417dea Jan Kara            2010-04-28  4188  		status = ocfs2_read_quota_phys_block(oinfo->dqi_gqinode,
ae4f6ef13417dea Jan Kara            2010-04-28  4189  						     oinfo->dqi_giblk, &bh);
85eb8b73d66530b Joel Becker         2008-11-25  4190  		if (status) {
9e33d69f553aaf1 Jan Kara            2008-08-25  4191  			mlog_errno(status);
9e33d69f553aaf1 Jan Kara            2008-08-25  4192  			goto bail;
9e33d69f553aaf1 Jan Kara            2008-08-25  4193  		}
9e33d69f553aaf1 Jan Kara            2008-08-25  4194  		gdinfo = (struct ocfs2_global_disk_dqinfo *)
9e33d69f553aaf1 Jan Kara            2008-08-25  4195  					(bh->b_data + OCFS2_GLOBAL_INFO_OFF);
9e33d69f553aaf1 Jan Kara            2008-08-25  4196  		info->dqi_bgrace = le32_to_cpu(gdinfo->dqi_bgrace);
9e33d69f553aaf1 Jan Kara            2008-08-25  4197  		info->dqi_igrace = le32_to_cpu(gdinfo->dqi_igrace);
9e33d69f553aaf1 Jan Kara            2008-08-25  4198  		oinfo->dqi_syncms = le32_to_cpu(gdinfo->dqi_syncms);
9e33d69f553aaf1 Jan Kara            2008-08-25  4199  		oinfo->dqi_gi.dqi_blocks = le32_to_cpu(gdinfo->dqi_blocks);
9e33d69f553aaf1 Jan Kara            2008-08-25  4200  		oinfo->dqi_gi.dqi_free_blk = le32_to_cpu(gdinfo->dqi_free_blk);
9e33d69f553aaf1 Jan Kara            2008-08-25  4201  		oinfo->dqi_gi.dqi_free_entry =
9e33d69f553aaf1 Jan Kara            2008-08-25  4202  					le32_to_cpu(gdinfo->dqi_free_entry);
9e33d69f553aaf1 Jan Kara            2008-08-25  4203  		brelse(bh);
9e33d69f553aaf1 Jan Kara            2008-08-25  4204  		ocfs2_track_lock_refresh(lockres);
9e33d69f553aaf1 Jan Kara            2008-08-25  4205  	}
9e33d69f553aaf1 Jan Kara            2008-08-25  4206  
9e33d69f553aaf1 Jan Kara            2008-08-25  4207  bail:
9e33d69f553aaf1 Jan Kara            2008-08-25  4208  	return status;
9e33d69f553aaf1 Jan Kara            2008-08-25  4209  }
9e33d69f553aaf1 Jan Kara            2008-08-25  4210  
9e33d69f553aaf1 Jan Kara            2008-08-25  4211  /* Lock quota info, this function expects at least shared lock on the quota file
9e33d69f553aaf1 Jan Kara            2008-08-25  4212   * so that we can safely refresh quota info from disk. */
9e33d69f553aaf1 Jan Kara            2008-08-25  4213  int ocfs2_qinfo_lock(struct ocfs2_mem_dqinfo *oinfo, int ex)
9e33d69f553aaf1 Jan Kara            2008-08-25  4214  {
9e33d69f553aaf1 Jan Kara            2008-08-25  4215  	struct ocfs2_lock_res *lockres = &oinfo->dqi_gqlock;
9e33d69f553aaf1 Jan Kara            2008-08-25  4216  	struct ocfs2_super *osb = OCFS2_SB(oinfo->dqi_gi.dqi_sb);
9e33d69f553aaf1 Jan Kara            2008-08-25  4217  	int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
9e33d69f553aaf1 Jan Kara            2008-08-25  4218  	int status = 0;
9e33d69f553aaf1 Jan Kara            2008-08-25  4219  
9e33d69f553aaf1 Jan Kara            2008-08-25  4220  	/* On RO devices, locking really isn't needed... */
9e33d69f553aaf1 Jan Kara            2008-08-25  4221  	if (ocfs2_is_hard_readonly(osb)) {
9e33d69f553aaf1 Jan Kara            2008-08-25  4222  		if (ex)
9e33d69f553aaf1 Jan Kara            2008-08-25  4223  			status = -EROFS;
9e33d69f553aaf1 Jan Kara            2008-08-25  4224  		goto bail;
9e33d69f553aaf1 Jan Kara            2008-08-25  4225  	}
9e33d69f553aaf1 Jan Kara            2008-08-25  4226  	if (ocfs2_mount_local(osb))
9e33d69f553aaf1 Jan Kara            2008-08-25  4227  		goto bail;
9e33d69f553aaf1 Jan Kara            2008-08-25  4228  
9e33d69f553aaf1 Jan Kara            2008-08-25  4229  	status = ocfs2_cluster_lock(osb, lockres, level, 0, 0);
9e33d69f553aaf1 Jan Kara            2008-08-25  4230  	if (status < 0) {
9e33d69f553aaf1 Jan Kara            2008-08-25  4231  		mlog_errno(status);
9e33d69f553aaf1 Jan Kara            2008-08-25  4232  		goto bail;
9e33d69f553aaf1 Jan Kara            2008-08-25  4233  	}
9e33d69f553aaf1 Jan Kara            2008-08-25  4234  	if (!ocfs2_should_refresh_lock_res(lockres))
9e33d69f553aaf1 Jan Kara            2008-08-25  4235  		goto bail;
9e33d69f553aaf1 Jan Kara            2008-08-25  4236  	/* OK, we have the lock but we need to refresh the quota info */
9e33d69f553aaf1 Jan Kara            2008-08-25  4237  	status = ocfs2_refresh_qinfo(oinfo);
9e33d69f553aaf1 Jan Kara            2008-08-25  4238  	if (status)
9e33d69f553aaf1 Jan Kara            2008-08-25  4239  		ocfs2_qinfo_unlock(oinfo, ex);
9e33d69f553aaf1 Jan Kara            2008-08-25  4240  	ocfs2_complete_lock_res_refresh(lockres, status);
9e33d69f553aaf1 Jan Kara            2008-08-25  4241  bail:
9e33d69f553aaf1 Jan Kara            2008-08-25  4242  	return status;
9e33d69f553aaf1 Jan Kara            2008-08-25  4243  }
9e33d69f553aaf1 Jan Kara            2008-08-25  4244  
8dec98edfe9684c Tao Ma              2009-08-18  4245  int ocfs2_refcount_lock(struct ocfs2_refcount_tree *ref_tree, int ex)
8dec98edfe9684c Tao Ma              2009-08-18  4246  {
8dec98edfe9684c Tao Ma              2009-08-18  4247  	int status;
8dec98edfe9684c Tao Ma              2009-08-18  4248  	int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
8dec98edfe9684c Tao Ma              2009-08-18  4249  	struct ocfs2_lock_res *lockres = &ref_tree->rf_lockres;
8dec98edfe9684c Tao Ma              2009-08-18  4250  	struct ocfs2_super *osb = lockres->l_priv;
8dec98edfe9684c Tao Ma              2009-08-18  4251  
8dec98edfe9684c Tao Ma              2009-08-18  4252  
8dec98edfe9684c Tao Ma              2009-08-18  4253  	if (ocfs2_is_hard_readonly(osb))
8dec98edfe9684c Tao Ma              2009-08-18  4254  		return -EROFS;
8dec98edfe9684c Tao Ma              2009-08-18  4255  
8dec98edfe9684c Tao Ma              2009-08-18  4256  	if (ocfs2_mount_local(osb))
8dec98edfe9684c Tao Ma              2009-08-18  4257  		return 0;
8dec98edfe9684c Tao Ma              2009-08-18  4258  
8dec98edfe9684c Tao Ma              2009-08-18  4259  	status = ocfs2_cluster_lock(osb, lockres, level, 0, 0);
8dec98edfe9684c Tao Ma              2009-08-18  4260  	if (status < 0)
8dec98edfe9684c Tao Ma              2009-08-18  4261  		mlog_errno(status);
8dec98edfe9684c Tao Ma              2009-08-18  4262  
8dec98edfe9684c Tao Ma              2009-08-18  4263  	return status;
8dec98edfe9684c Tao Ma              2009-08-18  4264  }
8dec98edfe9684c Tao Ma              2009-08-18  4265  
8dec98edfe9684c Tao Ma              2009-08-18  4266  void ocfs2_refcount_unlock(struct ocfs2_refcount_tree *ref_tree, int ex)
8dec98edfe9684c Tao Ma              2009-08-18  4267  {
8dec98edfe9684c Tao Ma              2009-08-18  4268  	int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
8dec98edfe9684c Tao Ma              2009-08-18  4269  	struct ocfs2_lock_res *lockres = &ref_tree->rf_lockres;
8dec98edfe9684c Tao Ma              2009-08-18  4270  	struct ocfs2_super *osb = lockres->l_priv;
8dec98edfe9684c Tao Ma              2009-08-18  4271  
8dec98edfe9684c Tao Ma              2009-08-18  4272  	if (!ocfs2_mount_local(osb))
8dec98edfe9684c Tao Ma              2009-08-18  4273  		ocfs2_cluster_unlock(osb, lockres, level);
8dec98edfe9684c Tao Ma              2009-08-18  4274  }
8dec98edfe9684c Tao Ma              2009-08-18  4275  
006000566d4e95b Adrian Bunk         2008-01-29  4276  static void ocfs2_process_blocked_lock(struct ocfs2_super *osb,
ccd979bdbce9fba Mark Fasheh         2005-12-15  4277  				       struct ocfs2_lock_res *lockres)
ccd979bdbce9fba Mark Fasheh         2005-12-15  4278  {
ccd979bdbce9fba Mark Fasheh         2005-12-15  4279  	int status;
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4280  	struct ocfs2_unblock_ctl ctl = {0, 0,};
ccd979bdbce9fba Mark Fasheh         2005-12-15  4281  	unsigned long flags;
ccd979bdbce9fba Mark Fasheh         2005-12-15  4282  
ccd979bdbce9fba Mark Fasheh         2005-12-15  4283  	/* Our reference to the lockres in this function can be
ccd979bdbce9fba Mark Fasheh         2005-12-15  4284  	 * considered valid until we remove the OCFS2_LOCK_QUEUED
ccd979bdbce9fba Mark Fasheh         2005-12-15  4285  	 * flag. */
ccd979bdbce9fba Mark Fasheh         2005-12-15  4286  
ccd979bdbce9fba Mark Fasheh         2005-12-15  4287  	BUG_ON(!lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4288  	BUG_ON(!lockres->l_ops);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4289  
9b915181af0a99f Sunil Mushran       2010-02-26  4290  	mlog(ML_BASTS, "lockres %s blocked\n", lockres->l_name);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4291  
ccd979bdbce9fba Mark Fasheh         2005-12-15  4292  	/* Detect whether a lock has been marked as going away while
34d024f84345807 Mark Fasheh         2007-09-24  4293  	 * the downconvert thread was processing other things. A lock can
ccd979bdbce9fba Mark Fasheh         2005-12-15  4294  	 * still be marked with OCFS2_LOCK_FREEING after this check,
ccd979bdbce9fba Mark Fasheh         2005-12-15  4295  	 * but short circuiting here will still save us some
ccd979bdbce9fba Mark Fasheh         2005-12-15  4296  	 * performance. */
ccd979bdbce9fba Mark Fasheh         2005-12-15  4297  	spin_lock_irqsave(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4298  	if (lockres->l_flags & OCFS2_LOCK_FREEING)
ccd979bdbce9fba Mark Fasheh         2005-12-15  4299  		goto unqueue;
ccd979bdbce9fba Mark Fasheh         2005-12-15  4300  	spin_unlock_irqrestore(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4301  
b5e500e23e53279 Mark Fasheh         2006-09-13  4302  	status = ocfs2_unblock_lock(osb, lockres, &ctl);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4303  	if (status < 0)
ccd979bdbce9fba Mark Fasheh         2005-12-15  4304  		mlog_errno(status);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4305  
ccd979bdbce9fba Mark Fasheh         2005-12-15  4306  	spin_lock_irqsave(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4307  unqueue:
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4308  	if (lockres->l_flags & OCFS2_LOCK_FREEING || !ctl.requeue) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  4309  		lockres_clear_flags(lockres, OCFS2_LOCK_QUEUED);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4310  	} else
ccd979bdbce9fba Mark Fasheh         2005-12-15  4311  		ocfs2_schedule_blocked_lock(osb, lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4312  
9b915181af0a99f Sunil Mushran       2010-02-26  4313  	mlog(ML_BASTS, "lockres %s, requeue = %s.\n", lockres->l_name,
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4314  	     ctl.requeue ? "yes" : "no");
ccd979bdbce9fba Mark Fasheh         2005-12-15  4315  	spin_unlock_irqrestore(&lockres->l_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4316  
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4317  	if (ctl.unblock_action != UNBLOCK_CONTINUE
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4318  	    && lockres->l_ops->post_unlock)
d680efe9d8fe0eb Mark Fasheh         2006-09-08  4319  		lockres->l_ops->post_unlock(osb, lockres);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4320  }
ccd979bdbce9fba Mark Fasheh         2005-12-15  4321  
ccd979bdbce9fba Mark Fasheh         2005-12-15  4322  static void ocfs2_schedule_blocked_lock(struct ocfs2_super *osb,
ccd979bdbce9fba Mark Fasheh         2005-12-15  4323  					struct ocfs2_lock_res *lockres)
ccd979bdbce9fba Mark Fasheh         2005-12-15  4324  {
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4325  	unsigned long flags;
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4326  
ccd979bdbce9fba Mark Fasheh         2005-12-15  4327  	assert_spin_locked(&lockres->l_lock);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4328  
ccd979bdbce9fba Mark Fasheh         2005-12-15  4329  	if (lockres->l_flags & OCFS2_LOCK_FREEING) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  4330  		/* Do not schedule a lock for downconvert when it's on
ccd979bdbce9fba Mark Fasheh         2005-12-15  4331  		 * the way to destruction - any nodes wanting access
ccd979bdbce9fba Mark Fasheh         2005-12-15  4332  		 * to the resource will get it soon. */
9b915181af0a99f Sunil Mushran       2010-02-26  4333  		mlog(ML_BASTS, "lockres %s won't be scheduled: flags 0x%lx\n",
ccd979bdbce9fba Mark Fasheh         2005-12-15  4334  		     lockres->l_name, lockres->l_flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4335  		return;
ccd979bdbce9fba Mark Fasheh         2005-12-15  4336  	}
ccd979bdbce9fba Mark Fasheh         2005-12-15  4337  
ccd979bdbce9fba Mark Fasheh         2005-12-15  4338  	lockres_or_flags(lockres, OCFS2_LOCK_QUEUED);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4339  
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4340  	spin_lock_irqsave(&osb->dc_task_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4341  	if (list_empty(&lockres->l_blocked_list)) {
ccd979bdbce9fba Mark Fasheh         2005-12-15  4342  		list_add_tail(&lockres->l_blocked_list,
ccd979bdbce9fba Mark Fasheh         2005-12-15  4343  			      &osb->blocked_lock_list);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4344  		osb->blocked_lock_count++;
ccd979bdbce9fba Mark Fasheh         2005-12-15  4345  	}
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4346  	spin_unlock_irqrestore(&osb->dc_task_lock, flags);
ccd979bdbce9fba Mark Fasheh         2005-12-15  4347  }
34d024f84345807 Mark Fasheh         2007-09-24  4348  
34d024f84345807 Mark Fasheh         2007-09-24  4349  static void ocfs2_downconvert_thread_do_work(struct ocfs2_super *osb)
34d024f84345807 Mark Fasheh         2007-09-24  4350  {
34d024f84345807 Mark Fasheh         2007-09-24  4351  	unsigned long processed;
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4352  	unsigned long flags;
34d024f84345807 Mark Fasheh         2007-09-24  4353  	struct ocfs2_lock_res *lockres;
34d024f84345807 Mark Fasheh         2007-09-24  4354  
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4355  	spin_lock_irqsave(&osb->dc_task_lock, flags);
34d024f84345807 Mark Fasheh         2007-09-24  4356  	/* grab this early so we know to try again if a state change and
34d024f84345807 Mark Fasheh         2007-09-24  4357  	 * wake happens part-way through our work  */
34d024f84345807 Mark Fasheh         2007-09-24  4358  	osb->dc_work_sequence = osb->dc_wake_sequence;
34d024f84345807 Mark Fasheh         2007-09-24  4359  
34d024f84345807 Mark Fasheh         2007-09-24  4360  	processed = osb->blocked_lock_count;
209f7512d007980 Joseph Qi           2015-08-06  4361  	/*
209f7512d007980 Joseph Qi           2015-08-06  4362  	 * blocked lock processing in this loop might call iput which can
209f7512d007980 Joseph Qi           2015-08-06  4363  	 * remove items off osb->blocked_lock_list. Downconvert up to
209f7512d007980 Joseph Qi           2015-08-06  4364  	 * 'processed' number of locks, but stop short if we had some
209f7512d007980 Joseph Qi           2015-08-06  4365  	 * removed in ocfs2_mark_lockres_freeing when downconverting.
209f7512d007980 Joseph Qi           2015-08-06  4366  	 */
209f7512d007980 Joseph Qi           2015-08-06  4367  	while (processed && !list_empty(&osb->blocked_lock_list)) {
34d024f84345807 Mark Fasheh         2007-09-24  4368  		lockres = list_entry(osb->blocked_lock_list.next,
34d024f84345807 Mark Fasheh         2007-09-24  4369  				     struct ocfs2_lock_res, l_blocked_list);
34d024f84345807 Mark Fasheh         2007-09-24  4370  		list_del_init(&lockres->l_blocked_list);
34d024f84345807 Mark Fasheh         2007-09-24  4371  		osb->blocked_lock_count--;
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4372  		spin_unlock_irqrestore(&osb->dc_task_lock, flags);
34d024f84345807 Mark Fasheh         2007-09-24  4373  
34d024f84345807 Mark Fasheh         2007-09-24  4374  		BUG_ON(!processed);
34d024f84345807 Mark Fasheh         2007-09-24  4375  		processed--;
34d024f84345807 Mark Fasheh         2007-09-24  4376  
34d024f84345807 Mark Fasheh         2007-09-24  4377  		ocfs2_process_blocked_lock(osb, lockres);
34d024f84345807 Mark Fasheh         2007-09-24  4378  
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4379  		spin_lock_irqsave(&osb->dc_task_lock, flags);
34d024f84345807 Mark Fasheh         2007-09-24  4380  	}
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4381  	spin_unlock_irqrestore(&osb->dc_task_lock, flags);
34d024f84345807 Mark Fasheh         2007-09-24  4382  }
34d024f84345807 Mark Fasheh         2007-09-24  4383  
34d024f84345807 Mark Fasheh         2007-09-24  4384  static int ocfs2_downconvert_thread_lists_empty(struct ocfs2_super *osb)
34d024f84345807 Mark Fasheh         2007-09-24  4385  {
34d024f84345807 Mark Fasheh         2007-09-24  4386  	int empty = 0;
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4387  	unsigned long flags;
34d024f84345807 Mark Fasheh         2007-09-24  4388  
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4389  	spin_lock_irqsave(&osb->dc_task_lock, flags);
34d024f84345807 Mark Fasheh         2007-09-24  4390  	if (list_empty(&osb->blocked_lock_list))
34d024f84345807 Mark Fasheh         2007-09-24  4391  		empty = 1;
34d024f84345807 Mark Fasheh         2007-09-24  4392  
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4393  	spin_unlock_irqrestore(&osb->dc_task_lock, flags);
34d024f84345807 Mark Fasheh         2007-09-24  4394  	return empty;
34d024f84345807 Mark Fasheh         2007-09-24  4395  }
34d024f84345807 Mark Fasheh         2007-09-24  4396  
34d024f84345807 Mark Fasheh         2007-09-24  4397  static int ocfs2_downconvert_thread_should_wake(struct ocfs2_super *osb)
34d024f84345807 Mark Fasheh         2007-09-24  4398  {
34d024f84345807 Mark Fasheh         2007-09-24  4399  	int should_wake = 0;
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4400  	unsigned long flags;
34d024f84345807 Mark Fasheh         2007-09-24  4401  
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4402  	spin_lock_irqsave(&osb->dc_task_lock, flags);
34d024f84345807 Mark Fasheh         2007-09-24  4403  	if (osb->dc_work_sequence != osb->dc_wake_sequence)
34d024f84345807 Mark Fasheh         2007-09-24  4404  		should_wake = 1;
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4405  	spin_unlock_irqrestore(&osb->dc_task_lock, flags);
34d024f84345807 Mark Fasheh         2007-09-24  4406  
34d024f84345807 Mark Fasheh         2007-09-24  4407  	return should_wake;
34d024f84345807 Mark Fasheh         2007-09-24  4408  }
34d024f84345807 Mark Fasheh         2007-09-24  4409  
200bfae37a15e50 Adrian Bunk         2008-02-17  4410  static int ocfs2_downconvert_thread(void *arg)
34d024f84345807 Mark Fasheh         2007-09-24  4411  {
34d024f84345807 Mark Fasheh         2007-09-24  4412  	struct ocfs2_super *osb = arg;
34d024f84345807 Mark Fasheh         2007-09-24  4413  
34d024f84345807 Mark Fasheh         2007-09-24  4414  	/* only quit once we've been asked to stop and there is no more
34d024f84345807 Mark Fasheh         2007-09-24  4415  	 * work available */
34d024f84345807 Mark Fasheh         2007-09-24  4416  	while (!(kthread_should_stop() &&
34d024f84345807 Mark Fasheh         2007-09-24  4417  		ocfs2_downconvert_thread_lists_empty(osb))) {
34d024f84345807 Mark Fasheh         2007-09-24  4418  
34d024f84345807 Mark Fasheh         2007-09-24  4419  		wait_event_interruptible(osb->dc_event,
34d024f84345807 Mark Fasheh         2007-09-24  4420  					 ocfs2_downconvert_thread_should_wake(osb) ||
34d024f84345807 Mark Fasheh         2007-09-24  4421  					 kthread_should_stop());
34d024f84345807 Mark Fasheh         2007-09-24  4422  
34d024f84345807 Mark Fasheh         2007-09-24  4423  		mlog(0, "downconvert_thread: awoken\n");
34d024f84345807 Mark Fasheh         2007-09-24  4424  
34d024f84345807 Mark Fasheh         2007-09-24  4425  		ocfs2_downconvert_thread_do_work(osb);
34d024f84345807 Mark Fasheh         2007-09-24  4426  	}
34d024f84345807 Mark Fasheh         2007-09-24  4427  
34d024f84345807 Mark Fasheh         2007-09-24  4428  	osb->dc_task = NULL;
4658d87cb38cb3a Hariprasad Kelam    2019-07-11  4429  	return 0;
34d024f84345807 Mark Fasheh         2007-09-24  4430  }
34d024f84345807 Mark Fasheh         2007-09-24  4431  
34d024f84345807 Mark Fasheh         2007-09-24  4432  void ocfs2_wake_downconvert_thread(struct ocfs2_super *osb)
34d024f84345807 Mark Fasheh         2007-09-24  4433  {
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4434  	unsigned long flags;
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4435  
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4436  	spin_lock_irqsave(&osb->dc_task_lock, flags);
34d024f84345807 Mark Fasheh         2007-09-24  4437  	/* make sure the voting thread gets a swipe at whatever changes
34d024f84345807 Mark Fasheh         2007-09-24  4438  	 * the caller may have made to the voting state */
34d024f84345807 Mark Fasheh         2007-09-24  4439  	osb->dc_wake_sequence++;
a75e9ccabd925d1 Srinivas Eeda       2012-01-30  4440  	spin_unlock_irqrestore(&osb->dc_task_lock, flags);
34d024f84345807 Mark Fasheh         2007-09-24  4441  	wake_up(&osb->dc_event);
34d024f84345807 Mark Fasheh         2007-09-24  4442  }

:::::: The code at line 3291 was first introduced by commit
:::::: 8056773ac4b42f36bae6406030218a5f12749c64 ocfs2: add locking filter debugfs file

:::::: TO: Gang He <ghe@suse.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--jw2wlx6jeacfixyi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
BqfX8+YVwgEA

--jw2wlx6jeacfixyi
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--jw2wlx6jeacfixyi--
