Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 244646EBF4
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 23:10:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5628522FC6;
	Fri, 19 Jul 2019 21:10:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EQlu48iRqO9m; Fri, 19 Jul 2019 21:10:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D2EDC22EC1;
	Fri, 19 Jul 2019 21:09:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B73851BF292
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 21:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A3F1884D06
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 21:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NZzLTdIC0hPR for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 21:09:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CCEAA87969
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 21:09:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 14:09:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; 
 d="gz'50?scan'50,208,50";a="252260974"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 19 Jul 2019 14:09:23 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hoa82-000J25-RQ; Sat, 20 Jul 2019 05:09:22 +0800
Date: Sat, 20 Jul 2019 05:08:34 +0800
From: kbuild test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 32/55] fs/ocfs2/dlmglue.c:3291:30:
 error: void value not ignored as it ought to be
Message-ID: <201907200516.oS1YR9FO%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3ozaiyoec5o2yr3c"
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


--3ozaiyoec5o2yr3c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
head:   88ff756ea1e770a5a0dab006b06b969c4cda7a24
commit: f47591daba68ef329112264bfa0d0b9f904b82a3 [32/55] debugfs: remove return value of debugfs_create_u32()
config: x86_64-rhel (attached as .config)
compiler: gcc-7 (Debian 7.4.0-10) 7.4.0
reproduce:
        git checkout f47591daba68ef329112264bfa0d0b9f904b82a3
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
3fc0b81326f3284 Greg Kroah-Hartman  2019-01-04  3295  
3fc0b81326f3284 Greg Kroah-Hartman  2019-01-04  3296  	ocfs2_get_dlm_debug(dlm_debug);
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

--3ozaiyoec5o2yr3c
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICF8jMl0AAy5jb25maWcAlDzbctw2su/5iinnJamtOJLsOD7nlB4wJMiBhyQYABzN6IWl
yGOvai3Jq8tu/PenGwDJBggqyVZqrelu3Bt9B7//7vsVe366v716urm++vLl2+rz8e74cPV0
/Lj6dPPl+H+rXK4aaVY8F+Y1EFc3d89//PzH+3f9u7erX16fvT5ZbY8Pd8cvq+z+7tPN52do
e3N/993338F/3wPw9it08/C/q8/X1z/9uvohP/5+c3W3+vX129cnP52e/Oj+AtpMNoUo+yzr
he7LLDv/NoDgR7/jSgvZnP968vbkZKStWFOOqBPSRcaavhLNduoEgBume6brvpRGzhAXTDV9
zQ5r3neNaIQRrBKXPJ8Ihfqtv5CK9LnuRJUbUfOe7w1bV7zXUpkJbzaKs7wXTSHh/3rDNDa2
+1LaXf6yejw+PX+dVo8D97zZ9UyVsIBamPM3Z7iNfq6ybgUMY7g2q5vH1d39E/YwEWxgPK5m
eI+tZMaqYbtevUqBe9bRzbEr7DWrDKHfsB3vt1w1vOrLS9FO5BSzBsxZGlVd1iyN2V8utZBL
iLcTIpzTuCl0QsldI9N6Cb+/fLm1fBn9NnEiOS9YV5l+I7VpWM3PX/1wd393/HHca33ByP7q
g96JNpsB8N/MVBO8lVrs+/q3jnc8DZ01yZTUuq95LdWhZ8awbDMhO80rsZ5+sw7EQXQiTGUb
h8CuWVVF5BPU3gC4TqvH598fvz0+HW+nG1DyhiuR2dvWKrkm06covZEXaQwvCp4ZgRMqCrjR
ejuna3mTi8Ze6XQntSgVM3hNguufy5qJCKZFnSLqN4Ir3JLDfIRai/TQHjEbJ5gaMwpOEXYS
rq2RKk2luOZqZ5fQ1zLn4RQLqTKee/kEG0EYqmVKcz+7kYdpzzlfd2WhQ14/3n1c3X+KznQS
0zLbatnBmCBmTbbJJRnRsg0lyZlhL6BRRBKuJZgdSGxozPuKadNnh6xKMI8V17sZhw5o2x/f
8cboF5H9WkmWZzDQy2Q1cALLP3RJulrqvmtxysOlMDe3x4fH1L0wItv2suHA+KSrRvabS1QL
tWXVSQ9cAo8rIXORJYWSayfyiieEkkMWHd0f+MeAkuuNYtnWcQzRSiHOsddSx0RqiHKDjGrP
RGnbpWek2T5Mo7WK87o10FmTGmNA72TVNYapA52pR77QLJPQajiNrO1+NleP/1o9wXRWVzC1
x6erp8fV1fX1/fPd083d5+l8dkJB67brWWb7CG5VAolcQKeGV8vy5kSSmKYVtDrbwOVlu0h+
rXWOEjPjIMahE7OM6XdviJECElIbRvkdQXDPK3aIOrKIfQImZLjuace1SEqKv7C1I+vBvgkt
q0Ee26NRWbfSiVsCx9gDjk4BfoJ9Btchde7aEdPmEQi3pw9A2CHsWFVNF49gGg6Ho3mZrStB
b73FyWyN66GsHq5klNJb9weR29uRVWUWcM7WWX06afGhDVeAuhSFOT87oXDc15rtCf70bLoO
ojFbMPwKHvVx+ibgxa7R3vK1TGlF33BG+vqfx4/PYPyvPh2vnp4fjo8W7NedwAYyX3dtC9a0
7puuZv2aga2fBZfKUl2wxgDS2NG7pmZtb6p1X1Sd3kSkY4ewtNOz90SILgwQwkdbjTe4YOIY
ZKWSXUvuT8tK7iQJJ+oZTKusjH5G9t0Em4/icFv4h1zsautHj2fTXyhh+Jpl2xnGntQELZhQ
fRKTFaDmWJNfiNyQzQRRliZ30FbkegZUObX4PbCA23ZJd8jDN13J4RAJvAX7kwoovAI4kMfM
esj5TmQ80FEOAfQovRI3ZZg9V8Wsu3VbJPqyhlBKpMAVGGkCWwYtfDCwQA4Tyxo5nPxGa57+
hvWpAIDLpr8bboLfcCjZtpXA5KhbwUAkRpDXHODiDUwzLgosIjjunIMiBLOS54mFKdQIIfPB
RluDTFE/GX+zGnpzdhnxHFUeOYwAiPxEgITuIQCoV2jxMvpNfEBw52ULihR8d7RD7IFKVcMd
DvkhItPwR+osIyfJyTyRn74LfDCgARWT8dba22gH8ahNm+l2C7MBLYbTIbvYEn5zaoocfjhS
DeJHIEOQweGqoI/Tzyxad6ATmJ40ztdjEosuNnDpq5nfOFppgY6If/dNLWj8gEg8XhUgFSk/
Lu8KAycktECLDozM6CdcBtJ9K4P1i7JhVUEY0y6AAqyNTgF6E4hXJgijgYnTqVAB5Tuh+bCR
ZGegkzVTStCD2iLJodZzSB8c2wRdg80Di0QOdiZDTGE3CS8lersBR6WOHcEfhIHRLthBgyuR
OHnkLavk6KZY5YkhsmlZ0H+TRWcJbmPgM1rxaKGJgaAnnudUe7hbAsP3o/c1GZHZ6UkQPbF2
hA87tseHT/cPt1d318cV/8/xDoxIBhZGhmYk+BCTbbjQuZunRcLy+11tPeuk0foXRxyt/toN
N5gC5Ox11a3dyMHNRKi3AeztDQ8pCAMyMHvUNonWFVunZBn0Ho4m02QMJ6HAhPEWT9gIsKi4
0bjtFQgKWS9OYiLcMJWD15unSTddUYAJac2mMa6xsAJrtrZMYXw2EHaG11bdYjxYFCKLwjdg
MhSiCu6vldNWUwa+ZxiaHYjfvV3TuMPeBsCD31QDaqO6zCqDnGcyp4JAdqbtTG+Vkjl/dfzy
6d3bn/54/+6nd29fBVcOdt/7AK+uHq7/iTH3n69tjP3Rx9/7j8dPDkJjuVtQ4oOxS3bIgC1o
VzzH1XUXXfcaDWnVgHYWLohxfvb+JQK2xzh1kmBg1qGjhX4CMuju9N1ANwafNOsDM3JABEqG
AEfZ2NtDDi6gGxwcXK+d+yLP5p2ADBVrhSGlPLR9RpmI3IjD7FM4BuYWpiG4NS8SFMCRMK2+
LYE743Aq2LXOHnWBA8WpIYk+5oCyshS6Uhj02nQ06RHQ2euVJHPzEWuuGhcxBIWvxbqKp6w7
jZHTJbT1xdB479saXGC480kKu7msmpv5lxJ2Ck74DTEHbeTYNl7y5rz8hsVZ0RHtIp571Zv9
7Or2um6Xuuxs4JlwSwHmD2eqOmQYTqUmQls697cCSQ8mwC/EDMUD1gwPH68enjDPXLzWqq/2
4f76+Ph4/7B6+vbVhUCImxxtCbnHdNq4lIIz0ynunIsQtT9jrchCWN3aCC+V6aWs8kLoTdLk
N2BVAQeHnTiuBzNSVSGC7w0wCDLdZNKN4yAB+tTZRrRJRYAEO1hgYiKI6nZxb6mZBwTu+GuR
cmcmfNVqHXfN6mkR3p9M9CGkLvp6LWjrAbboIGL3I6/5hAt44VWngmNxzpqsgf8L8KdGKZYK
Cx7gkoMxCo5M2XEadYLDZhh9nEP6/T6wD0f40rRHAt2Kxobdw7Pf7FBeVhhzAB2cBamJPW+C
H327i39HnA0wMC1OYqrNrk6A5m1/OT0r1yFIozyYXOLptHEoK0TirEY4TGJLtjD0sOHTRu7S
/IjEqXHi7Y2iwImTG6JsY9cfgHs2Es1XO5vk8CxTzQvoevs+DW91OoVQo/mfzqeCYRNahbFa
pe7McA1VA3aS15ku1PiOklSnyzijIyGX1e0+25SRgYYJl10kDUUj6q62Aq1gtagO5+/eUgJ7
YOAu11oFZ+yi6Rg44BVPB5SgS7jlTsSQ+IQHg3yZAzeHktqsAzgDJ4J1ao643DC5p4nCTcsd
A6kIxuuuQjtGGbJVOXXVS7CpQXY5W3ByNVgFiINDJFYJplpw9xpra2j0DMAOWPMSLb7T/zlL
40FXJLGD45HABTAnInVN7VwLqrM5BAMUMjx+W/nQz5UkpjNmQMWVRH8cw0VrJbcgFdZSGkzC
RJKwzvgMgFH0ipcsO8xQMYsM4IBFBiDmbPUG9F6qmw/Aiue3wdXYcPAzqkkgO9uDeLC393c3
T/cPQTKLuMpeRXZNFLmZUSjWVi/hM0wyBYKX0lh1Ky9C7Ta6ZAvzpQs9fTfzz7huwXCLhcCQ
+/VXIszxv99O21eLDG55kDsfQfGRTYjg0CYwHJiTcgWbMYdWIQDYXETH+4u1L0NYLhQcal+u
0fad2S9Zy9DwNOB9iyylb2hYBy5ipg5toMbwRAgqlc7tqGGK9CHEG9osa0WEQVGvsdag6SVy
qAPQ0W3uhSdFjm/sslEnwXJc9YKbNUv4LyN6imwEeCvLB5MMyyaqiMKjosIUi7I5iS3ekh6z
4YSpKrz31WC+YZlCx89P/vh4vPp4Qv5Ht63FSTpxMSUz0vjwvtvoP3jRUmN4TnWtZ/CAN1Bs
oTFRD+uZSF0HC0arKyrBjOAFUZO1UTTLBb/Q7RFGBLmdEO7PZzyHkwUyPDE02qz4H4hPg51g
8SmCGaTBL0ORxcIMlUW7mFW4nbpmkVflpV4tknAwL5LgkTvQ1cPd3PID0Q28EMEPuKBhSA5h
tdgnsy+aZxgjoeSby/705CRdCHjZn/2yiHoTtgq6Iyb35vL8lDCmU6QbhaUoE9GW73mQj7YA
DG2kHKZMMb3p847aDK7BhwDWbg5aoHIGGQbey8kfp+ElUdyGCf0ln3L99nAxqYPB8ZSVPfTL
KlE2837zA/jRWInljrJiB9D5ZEfg4lRdGVqw03Ui6JPzWYyZYl+K6+5yLRNT9+Ig0l/B8mOS
vWyqQ3KomDKuppnmVOc2ggWLTOWKQEiKAvYpN/MMlA3AVGLHW8zPB/McgGlt/0JkZKa9WJ73
gwKkOC9g/Dn6rf8zGgV/0VQKelQu/eIUknVRRCxRfDe6rcBVx9BXa7yDlqDCqJeNxCVKDCmd
2bQBibPb7v97fFiBHXT1+Xh7vHuye4P6dXX/FauuSeRoFtNzRSLELHbBvBmApOWnUIRH6a1o
be4nJT38WHyMApAjIRMhdxz8dpO7YL4JS5IRVXHehsQI8a7+ZETWNp9tcUkGBoILtuU2YJES
CHUwxpCTIb3nO0we5wkUllnP93Gc6Sy/k9u5uALIpbm6ED24acm5gusfOP4XvzmrGateRSYw
2eS1ZLJ/9L9Lb9ksmYRjZAr5ivDm7NcgQ6wQ1mAUyG0Xh1SBgzfGlwdjk5ZG2S3EZ27cKqyL
oEmCgkQvWh9QK5MRMNdXm6neRIafnWlLfQNH69krHAGNuELPPRFKo/iuBymhlMh5KhSONKDP
fJ3sZJ5ZBIvXv2YGjMJDDO2MCSQDAncwoIz6K1gzW4RhKfvB7WAolxBkQx+KAyNpHaGmKMfo
vKXRIp/tQNa2WR/WjAdtIrhoaxEtLalro4FZWYJxaMugw8be740aRh7LqEPcrqHY7VoQuXm8
mJdwkVhwE8yQwWTMc/C3YaBM48UPK3WKaAEpZBiScFy8jhksNHjtqJ02Ek19s5F5RL0uE9dM
8bxDgYdJ2wu0v2MrItjSQmDIYXLc4Dfaqp0S5jCPJYcjbWqWciwnecFaTqROCA8rTRLkE2W5
4TFvWzicE2ez47CoWVx+RsFF8yG+3RaOGbaE7DfFy3IFnMZKlnGPeRSlR+NUtsD0YqE4YOA0
+DsZZ3buYxwk1NY1GaqeV8XD8d/Px7vrb6vH66svQWxokBdT21GClHKHL0cwKGoW0PNS9RGN
IiZtgg4UQwUmdkTquv5GI9x/zAP89SZYEmNr9hZCvLMGssk5TCtPrpESAs6/0fg787FOWGdE
Sn8HOx0WviUpht1YwI9LX8CTlaaPelpfcjMWlzOy4aeYDVcfH27+E1T1TN53G+koy+iZzTZY
fg3iJIPqexkD/66jDnHPGnnRb99HzercszFvNJizOxB/VC7aMEPLeQ7mjovoK9Gk3Dw7yluX
46mtwLbb8fjPq4fjx7mdH/aLCvc2qLJPXOVxe8XHL8fwYntFHpwVwuxZVeBrJcVXQFXzplvs
wnCZdPnG2YxBM3uk43QGz/BP/R+7tvXz4wBY/QAyfnV8un79Iwlvg3p20VNitQOsrt2PEBrk
Lh0J5opOTwKXFimzZn12Aiv9rRMLpVlYw7LuUmLZV7dg3iGKqQYRInvcB12sk9u4sHC3KTd3
Vw/fVvz2+ctVxEOCvTkLwuHBcPs3Z6kzd7EKWqvhQPFvmy/pMA6MERfgDpqs8c8Xx5bTSmaz
tYsobh5u/wsXYZXHcoDnOb1u8LOXRZGqbhWqtlYNaPgg7JfXgrr28NNV4UUgfFpsaxgajlET
G7MrvMdLgr46w7d86wLWL6iInBB0usVFnxW+6i/JOKWUZcXHyc+kJcxi9QP/4+l493jz+5fj
tFECaxI/XV0ff1zp569f7x+eyJ7B1HdMhRHKnmtaLjDQoHgNMkARYlRSOXBy4BAhocJcdg17
zgKfy+3ddjiLVKEoaXyhWNsOD8UIHuNvlbQPn9HCVmGgKiDNWKs7LNex5Itki++rYQJYqKgk
1mkLnj4rDJMb94R2Cx6wEaW9V8kb+3fObYxK2ZW01HwbQWEhoj1OX7c0mHfm+PnhavVpGMcp
VPowZ4FgQM+uYGCdb2l9xgDBFCkW/aQxRVwF7OE9pluDAogROyvcRmBd0/QuQpgtU6YF9mMP
tY79CoSO1XwuV4cF/WGPuyIeY6hpAH1iDpjktU/+fQogJI3lY7DY9aFl1AEfkY3sw8J2LAHp
8OMEUTgNt/6WjudylAEIs5O34aZ18WPuHT5Gx2clVEA5IMquJMs79A6fviQuscXOe3MvzvEp
Nn6twQaTZnJtKMbFCtibp+M1RoF/+nj8CsyI+n9mDrn8QpirdvmFEDZ41UHtgHRFwnzaogHi
C7ntAwyQAPvonMaGs67QSY19rW1cXoipD7Cu1jx8p4HZ28ymkDAzWSx81EG2Ju7PDwAGel9E
j1FmpY12/lP0sGusmsZXQhnGWKJoCQbE8ZsQcC/7dfh2bYu1glHn9vESwDvVAB8bUQRPIlyB
JhwL1gAnKmBn++SgiXH8IaThL+yGxRdd45J1XCmMZdkqiuBmWbIg2jB98MD2uJFyGyHRlkNt
JMpOdom35BqO3JrF7hF+IioFdpPB3Ip/RTUnQC0zCxlRpK8QCKwcMnP3dRJXqt5fbITh4YvV
sWRXj2kx+9jXtYi6VLzUPcMcgVV7jntCa9bRaRo6CA8AP3qy2NBFvilkc9GvYQnusVuEs1lU
gtZ2ghHRX2BPWqMy5wCMkKGfZl8DuvLe6AXh1Eli/OHRifKbFqZFp5MK5MML2MRjILfnWedD
mJjbmTGLY2732NdXzsXjeJngeQXzV/HpuHauomoBl8tuoWjcewroCrjvTwwfqUnQYiXNRJ/a
EJ8p99X1xNtYgJOWeAwV8EyEnFVwD9rGV3kHaJtLJaMutI0awdbKma3jVi0MOBueRWwlcMxH
2fzjDBS9/PWBQBDPP0AQ3ym5s6X9C2KwscUa/glAgkUW6fq2S/ZpnxLsFqSXloVxRtdslvlQ
7cMzfAhEnHeZd5iqQi2GjxHxuiR2ge+FQW1hv+5i2CyTi0dumw/FBqn5BQ9kYnWLAyTlfthq
enOT6Jc8mFnqhJIkuvJoS47lEnO2ag+DljBVjHX86L+5MleXsLfCpcXHh0fEOsKPSonSp07J
xyj8lDyeRXrYvsGyTDpr8eZsjppWikwUH2UKNmlPAzraDN9uUhd7em8XUXFzx2/J5inU2Fzh
yy/3HRLiVDqYfRW7mDNxhWi8enM2VMjABqaMOLAbArtrKs3A1+vk2aKem+SZ3P30+9Xj8ePq
X+5B5NeH+083PkswRSyAzO/SS9WHlmwwlocnq8NLvBdGGjpCKx6/tgQORZadv/r8j3+E3ynD
j8c5GmqEBUC/qmz19cvz55u7x3AVAyV+UMhyW4XXN11VQ6ixNKfBj0WAXG//lBpFiVOuyShB
MLn4neKfuEbDmhW6L6Am6DW3L4g1vnglFXhOSMZS033UxwZOZqiu8eDpBQBt49DplwIy96o+
HUrx/WiVjd+nq9LRnYFSpNONHo3np8C+TNLAzaxhsnA98n6LL6zT9U5WhdgvxcQlD+uw7Ac/
kGCjfYr/Fr7KGT6dsNZlEhjkzafvLBheYlZ1jsJnYvkcDLJbGlNFn+SZY7GgM7kj9vsivgDM
Gmb/z9mb9ciNI42if6UwDwczwOnTKeV+AT9QFDOTLm0lKjNV9SJU2zVtY7yhXH2+6X9/GSQl
kVRQaZwB3FMZEVzFJSIYC64yA7JrgmvMxhAlUtRTm4Jib8m6U9o5xh+Ihg6DdKqGb1VWZPp8
VD2/vn2GHXDX/P3DdqkbzI0Gy553zgN4KYWBgQZXAvIWp+hvN3GwjJrGszeXN5qDGGtsSM1n
68wJxerMRVoKDAEhn1Iu7j2pAfxd2k6cE6QIhFiquTBWtRP0WZZUenO72vHaSPPZ/osjx4d+
zlQ4u9my5wLr0D2pc4IhQOuJtgXPDZvdja9rrXeMqn+J8paXcwRMNH2wUvMHeCOawIA5t3WK
AFY2aTpIYjnGSbLWsCzHS22Om0ruzHXQtJD3j4lryNcjksMDOiy3vWHLDCHXtIzshDrywvWJ
Ihp/8UJ7P1fyijsrn0E3ZJnBKw5T4+dwaFkV5yhU2Ea6pT1Tt6YE7UadWzEl1WWpuy7PivLq
mO3UV8HyEFK1FsANDJgKwplivpRhjF+4vuJFJ/CRMe3jdnQJO8D/gfbBjQ9p0WrTYPPsMlKM
BqL66em/Lx/+enuG1wuIGHynPHXerNWa8OKQNyAyTdh2DCV/uLpa1V/QjYwhuKT0ZYKeWTtH
1yVozW21vQHnXNBRrwtVGm3L+BQTGIcaZP7y9fvr33f5+PQ8UT3Peo+Mric5Kc4Ew4wg5bbf
65oH3xhHyO09DZhwH1RHB5gWrJkZhrro17aJj8yEYtqoPt6UGfQUf4Cwm8ezG88MumlH77ML
wMMdNKcCJBeup1XAbtuFmy47nKdL0K+YUh0I2MUaNP429tyNPtHB9XDlFUog4oBz62qAXt2e
8IrBEBtwqnTGnRfLANwWwNS97ho/EkkipTRbttY+xCWYGVgN5WdEw3kvrEXXz5RaGjpsaVq/
Wy32g6ute2aGDORC8NO1KuVCKCZuivOqI1RhpGMY2Z8dJct1hKaQ+KlV22Bo775kIBCvdqUB
Vd5F1ofLGCk82KGWX9OtiioLVIvbIDNGkgMWteQDLMQFEe+2zvq3dGNIqSe3P09VWVqn0VNy
dvjhp+WhzDBz4ieR92t0tIExwTDkCqq8+KVjhabcxNzP4Pv3EfVs3b8O2Y3Idcrq2lVGq5hz
mFFN2ocVmqpGh3tOx9jwnOxQIEhNUBvskLJy1t8plyc7hwckdNS6JvBAvkgRCLNKUREe/LAJ
oz+bipV7kR/8kJEjdrNXxtXM9q5VbuIQ2hVXP0BkQymOnXJSY6+2Y9UN08pU4mhnwlfieI9N
rYEkDALzy3UqhOu2A4EM5ReqnVdHADIPJu4THWhEGOWWuqGLl7f/+f76HzASnFzN8uC9t/ui
f8stQix7WxBwXHFH8hK5BzFFxnMnQ21sD3YwO/glj6xj6YFMJL/R2AqAg5NwoFoQ3sAggDuO
5IDQlwnzoKMPsIfglXIn/GrPtFxDE4BV79jTtFJhLlmDmrI5351XmpVxY2VL6OBYo9zqawd3
4AmoY1jnRSbuKwO+SPudODjtoK8piB2zdMBdWJ2UgiEYmhEhbAMwiamKyv/dpSfqnEcGrJwA
cZs/TVCTGjNwUqu+4t6H4NVRmVTl59ZHdM25KGy7joEeqwIJUw5zaIbshS8eMBjx3LxXPBeS
a4wwoGUgKKUP2WZ5zyfbvro03O3+OcVHeijPE8A4K3a3AElOI7ECMFHZ27eHga2gr6S0SfzN
ooBqG/l9VBgU6J42mo5WGBjG7h80ClGTq0Lg66xvRK4beE3ELn9oUP55tHVfPirhlqA0QOk5
sZ/SBvhVtnUtbceSAXWSf2FgEYA/JhlB4Bd2JMI5c3tMcZkbIkivSsCZVplh7V9YUSLgR2Yv
ogHMM3mNSYYW7VhK5Z+4jnmYzxT/iuNnSDBT655L7z+HzRYphORRMavyHt1X/+4fH/764/OH
f9jjytO1cCKOV5eN+8sc1SB3HjCMkuQ8hA6zCzdQl9pvB7BcN5MNusF26OYXtuhmukeh9ZxX
G6c6APKMBGsJburNFAp1OQeXggjeTCHdxgmRDNAi5YIqsbd5rJiHHNpye36s0ShkgHIOxh6C
93l6lLutSBYD3jfQu12Vn1wSA3DumpBE0ztBN8iOmy67ms5OugNYyaViLrEjgRNIGbhMV/Mt
IZC8CYxAgN9175+qqcz9f3icFpHCt3pZlrxIXrkR4lnjG5MMIOSITWqeSllkLPW1T5L1+gL8
678/f3l7eZ0k0prUjHHJBmXYa+eKNCgd38p0AitrCCSfMlOzzgiBVN/jdc6hGQLHyW2KLsXB
QkPE6KJQ0psDVQkMNPviOB8qhKxKClw4s2Vag1r1GzvaVuetERs1XUE2FgRHEcBp7+IAchqZ
2EHDApQbDBuUT6bWaaAVtSu8LjTKCKCUtxatcMzRVuTYCEGbQBHJw2S8YYFuEPAbI4G5PzRV
AHNaxssAitc0gBlZYBwvF4WKl1OIAIEo8lCHqirYVwj9GULxUKFmMvbG2tLjypjsmmN2lvx8
YHkUxB27/I19AQD77QPMn1qA+UMA2KTzAKyZ72llEDkR8qhwHarHcUlRQa6j9tGpz1wp7oY3
4QcEw9+fRwq4xG+QTA8Oi6gB9/Ejw14oAemcioch6Lfb20Z9a5XYL1CNezoCQGUB9GqByQt2
U015EKsv2SC6TN5L5i6IVqf7DLZs8BR6ul/v8VCJel7Uk6kz9BMRJ3/kwJ8FW9A6ifDYRHhg
jVpu4ZrNegwtIMmaXvUqmr122oErUhd/q56bft59+P71j8/fXj7eff0OT68/sUu/bfSlhFyd
rV5WM2ihvDmcNt+eX/98eQs11ZD6CPKzcg3B6zQkKmCYOOc3qHruap5qfhQWVX8JzxPe6Hoq
aDVPccpu4G93AnTQ2gFklgxy/cwT4GzTSDDTFfcCQMoWkEXkxlwUh5tdKA5B7s8iKn12DiEC
jSMTN3o93C035mW4aGbpZIM3CPwbCaNRhq6zJL+0dKU8ngtxk0YK12BQWvmb++vz24dPM+dI
A6k607RWkifeiCYCqQplPAYKbdx149TrabOzaII7wdBIrp4VoW/a0xRF8tiw0ASNVFoKvEll
7th5qpmvNhLNrW1DVZ1n8YoNnyVgF52+aZYofLZpAkaLebyYLw+X8+15O7GsuvHBT9mNFaYV
O7+2wnilIgvPNsiry/zCyeJmfuwZK47NaZ7k5tTkhN7A31huWtUCgbLmqIpDSGIfSFyRG8Er
G6Y5CvMgNUtyehRy5c7T3Dc3TyTFY85SzN8dhoaRLMSy9BT01jGkpN/5tTvlSGdoVfyS2Qb7
x7wbVCpP1RzJ7PViSMCXYo7gvIzf2bFG5pRYfTUQPpA56lHtxUjad/F640ETDkxJx6sJ/YBx
9pCLdDeGwcGhpSu0n+csTOAt3CWaqxpwSI8tbOF6Vvvt49H2bapfoSkgcYdq68ZoZnojUb9U
PjwdEskPDkNksCoplL8S7FNZ/exfIOzeXUQwQYXGSglLezxFsbGhlcf93dvr87efEEUBXEje
vn/4/uXuy/fnj3d/PH95/vYBjAZ++tExdHVam9VQ9yF4QJzTAILoGxTFBRHkhMONmm0czs/e
SNfvbl37c3idgjI6IVIgb54PeEJ7jSwvWHAVU38ybQFgk46kJx/iCvwalmOpNwy5LTVpUPHQ
M8NqpsQpPFlyhQ6rZWeVyWfK5LoML1LWukvs+cePL58/qPPu7tPLlx/Tso5+zPT2QJvJN2dG
vWbq/v9+4W3gAC98NVEPIitPQ6bvIIXB9YNasMGK9qozryhCErBukP0Cz49pzaCnD5YBpCkz
ArX6aApX6sgiVz6MfKqpnKhoAegqkuW0SzivBv2iAzfS0gmHO2y0jair4ZEHwTZN5iNw8kHU
dY0mHeRUWarRjtjvlMBkYofAVwh4nfHl7n5oxTEL1WhkPx6qFJnIXs6dzlVNrj6ojznpw+Ui
w78rCX0hiRiHMrpGzOxDs1H/72Zuq+JbcnNrS26CWzJQ1Gy4TWDzuHCz0zb2HGxCu2ET2g4W
gp35ZhXAwQEVQIEiI4A6ZQEE9NtEtcYJ8lAnsS9voz2WyEKJGr+MNtZ6RTocaC64uW0strs3
+HbbIHtj420Of1yFH3VzWO9zyxm9eAJLVb84Y05/5j380LHEX20GJxHwgHe2BSML1Uxm1kE6
B6CF2S3iboliSF7aopONqSsUzkPgDQr39AIWxpX3LcREKrZwosGbv2SkCA2jZlX2iCLT0IRB
3zocNb0M7O6FKnRUyRa8VzKPTp5mq+IsoKsr0xZwdDSqU6cuAO4o5enP8JFsquqALJ4TMAaq
pSeXjIibxZtD3YfGHnZbsJPjEEz24dPzh/94rvZ9xYgjgV29V4EtknmKDPjdpckRXgNpgT+o
aZreHE1ZdSojHTAjw5w4Q+TiRCJ7LoOEfooKm95r3zI59bGmOXvF6BY9e8s6xcyfGgg589X+
1eVy/RNXDlRw166TNLnzQ7JDrhqih0G8N05RdSeQZNqqwCmWVyVmzwaopI43u5VfQEPlhw9u
LVcDCr+m8ewV9GIF71AA7pdjtqLUOa6OzpGaT8/XyQnBj5LNF0VZumZYBgtnnrkPpsFr1NEg
HN8bA8IC1kFN8pKIrNjAI6w7XmwTKQuRa4RllElxDUrmytvyJ55JkTQkwyPJtvEahWekSlBE
dSpDBhCbrLxWBDNs4IwxGNraWUMjtCsy8wdrKznt8HJDsHgfVhHN+1ofntChCevLCJO7SR10
D3+9/PUiD63fjXeyE5HcUHc0eZhU0Z2aBAEeBJ1CnT3aA1XSwAlUqd6R1mrvFVcBxQHpgjgg
xRv2kCHQxH+DM8PF/Xp6PGsC1g59tQTGFnBJAIIjOppUTB4mFFz+P0PmL61rZPoezLROOiXu
kxu9oqfynk2rfMDmkyon3An48DBgprNK7gP2LUPhWfTpND/rFQ9YiChsb9k5XYbgBYt0F8n2
ojmDL88/f37+t9FHuXuFZp77hQRMlCcG3FCt6ZogFE++msIP1ylMvxQYoAF4cfJ66NQ2VzUm
LhXSBQndID2A9HQTqH6mRsY9eeAeKglEO+lJlEBI0GBMQMJyk/VqAjNRp5YxgqK+S5aBq+du
FONMrgXPmfdM1iNUdkJvyH3rpEBTZVskvBIsVJzjaSLNfBHHCBCMi8BYFB4OvYEBHGJ/2ZyC
titNphWA0yVL/Q4BRhCI1RToEFHKkGbasG8qo3vJfDMo3QL3v5aC3ic4OdVWUpOOym6GT3Ig
AA5jlkAu4lk8NdYL80QNeG/Mksih5SUeyWmY1EP4+AS8Nj8Ex8IbnZk5JQ/c9jJJqbUs0gLC
p4kyu7iml4m83IkK+YMF7KlYcRFXDvv1KwLsHOc6G3FpHTn7YpwipxBPHLjoEPSXnHK70NBd
HRVmQKFTpZO+ozTjfCnjYLdtWG7uPgJIdxSlSzPE33ahctcgbnmF+3BzEuGzU09d0EC/y5ag
noanZjAX8Pj1wotAbVB1ZQ2pPggVRtbOl+t6a5uAVFBhgNuwKCaOoQCsWwiw8OiF5k4e7B/V
oXvvRGqQANHUjOQmmJZbpTIh1eoh16X57u3l59uE463uGwji6XyFtC6rLi8Lrr3IB/F/UpGH
sJ2mrY9I8pqk+PTYqx4yIjhKRwAkNHcBx2uvkJG/7tKX//v5A5LGASgvuvbxawGspYEzELAi
o6j4AjjH5gQAlGQU3vzALc2NjKaw3VxDlG63gdydEstVhoHigJ+QKnHEbO0VI/cqJ9VMDeI9
gZSlYXx5aLzYC8Oki0runT6vgBPmEEqe+DKK2nDXaRWvfXxv+zGtfGj0LJKZRncQU0GRBJpl
uZjHixTwuPis1t18+fsLgQDMcyQ5TcgsgfpucwTnyVe3Js6bILekjn6nw0eIYBXebrKuvUAa
i4M8wOoKNyORyHuaI7spcHaBr37thoy88ppljodaD+mc1NhXpkzXbe8iBQJHqQmIXyxx4XAE
nUHksFNKFRGp5B0QfQn/GqYgTCnLII1HJ2/iQu4Y/JId6Ckk/DhwHVG1Kws0ic9ADREf5Ygh
HCXEza7ZMU2mvVexvPpAskDi5Yu2OqvVod4tNqKDIWKG7tcpsfJq+uir81kynkxmt4cFtdtG
jRNNFDuRjmlrx2HuETWFSEOwrjIcOwQl+hWqd//4+vnbz7fXly/dp7d/TAhzJk5I+YylAgH3
6k47tJRVk+iDyoTi3LgVqaxYM5MGImFv3NXKVfPE3i3Guq5cQjGu53DPM4sR07+9ERkgL6qz
G1BYw49VUNuy98TlfTVGK3SYMoloWVhC2aMvE8Mhx3HZhbIKrGjxQ7U44GdXNRX6nK540km/
tkfPYw/iehWnkLTEjfAk2UTZ08znqIEn73LhugrDmaM8+cajk/AMUsl6umo2so76+SfALGli
7mq14TcyRp1wwA5A6f/o0jInTphkYEXgwHBCifWR1aAEELjkTjZNA5hE/AJ4x6h9JChSoQJf
jh/TwIJHjkWgDwCs8HzOR5cMTshfIsaTT9rDq3Lmd6dLAzeuLtDgfm0KmVzxdtw8RgagAtfr
j+niVF464XVrZm8CFgylIVyXSUsOubYDXRHNOfHrVhLPGd/D8sgAGmAAVZw0VmCqJ6jFCQEE
AAjJp7gJDXORvLy4AMk6eACi5Tm3q3GV5tjOUQ368W4BqAVwbK+NWwTfN24ybR/T8cTRE9l4
Cln9UG2ARSRO7kLTAZFlwQ/fv729fv/y5eXVSqSpWfLnjy/f5BkjqV4ssp+WWezIcd6itfQY
eTrpSPry8/Of366QQgz6pOzGhdWKs2OuXZWBvV4ZSMimljwTgSi9s00NoXzxiRkmjX37+OO7
ZNC9zkHiKpVaBm3ZKThU9fN/Pr99+IR/BqducTVqkobRYP3h2salS0ntrfSccmyVA6E+501v
f/vw/Prx7o/Xzx//tB3JHuGFbzzK1c+utAJ6aEjNaXnygQ33IaxgoBFkE8pSnHji3Gs1qbin
jBgzhH3+YG7Hu9KP/XbWyQyMI9LfKLhT0cL+MfCM8kxq8spJ/WggXW4SMwwyEbjRZ07Gl6rW
dQ+ZJiFj1vCUOeTPA/tz20b4cDVpCS3+oAepsIOprMiOk9tK/nNoxOr9WErlFvJHjqLtFJbD
lI+UeNx8PyOgGVHfEFwcVxU00Qm3O8yokmylWBd4ZxlE3zqQZ1ETgLhnqul0CFeUWJHphICG
WKUFw8TcR2GOdu7kqe8jU6pMOvIaVOVx9OWcyR8k4RlvnGBnUspz4ubq3x2P6QQm7CsCsomJ
E6n1Gji4cQMBeWCSF9Hep+g3CuySIV3uR8Vi/rSPeRs8nBKl5IrdGJUgqyPBS46FQPMnNM5b
jfypvkwg+4PE2uHYw1Sk3k4pvDwAP55ff3pHLRSVcwqx+7AGJrHe+ypUHWf5512uHfbviCRt
wMdEp6u9y57/diO2y5aS7F6uZutxQANLeu9PiQ6zXOOPMYcmGL0BR/Agpj6kweqEOKQ4uyry
YCHofFlW4Q8FwWeDyCHkPoS/Vk8Ak89Zk/z3usx/P3x5/imvvk+ff2BXqFo4B5xRAtx7ljIa
2v9AoFMiFfdS9E6bU2dZjCHYeBa7crGyWx2PEFjsqBpgYRJcIFC4MowjCcQER1fyzOzpKOfP
P35YWdYhBLqmev4gT4HpFOtsOH283/BX19m8L5AaDT/r1deXjN5kzH2s2RsdUz0TL1/+/Rtw
Q88qloas05xfoSVS5XS9joIdgswGh4yIU5Aip6cqXt7H6014wYsmXoc3i8jmPnN1msPKf3No
dYjEMAsTDvzzz//8Vn77jcIMTpQL7hyU9LhEP8nt2faOhUKKkEUgDZBa7tdulkBeiBMC1d2s
StP67n/p/48l65rffdWxiQPfXRfABnW7KqRPJWZBCdhzwt3DXgK6a6ZyqolTKXlCO7x6T5Cw
xDwDxgu3NcBCkP185gwFGggGlYRPP9VI5qXqdSgU++PlqR8ISszxTyee48dT02ua4DR3tc09
4KsH6Gyb2h4mWVOIN21djCO1MgDAxcGRRqly+DwZaXe77R7zo+kponi3mowAQph0du5JHSd4
rL6oBrWvjnI9ZUuMF6odpLqoXL2ASdQ0AXTFOcvgh2Uf62E6rTZHctn2lAfLtI+m8lLwppqn
qMeGKQ3CuRBwBPFqGbetXfgpdCj1hc85w56XenQmGYjpyACq0hLoqH2LabW0fqyaEuhmW0/r
BNMzDTOYOAxqDxb3c4VEu5v2WE4DCjQjiDYYTqn+o81yt3I+Drz20/Tif7MebIQC8GId9ecO
wVXprbGNC+I7iEOOnTbo5jS7Oujm7Fmx0CAz4po7Y8OSZI5MOULD2cSHCZn9UrVQ605bSlxy
ZimReo5YQvXz4nSjXJzoBkCIhA1X8ANJagifbj81KjjOHSucF/7XQSmvLq/tIcZTWU3aMbjZ
5oaAQOit5syOZvQ+//xgyXw9Y88KKfEK8M5fZpdF7Hxzkq7jddulVYlr4qR8nz+C6hmXQZJc
St8BDfeJFE2JvjgfQZ1LLTPThh9y75Mq0LZtnedK+cH2y1isFhFSrZSVs1Kc4X0WpHxq+51B
k611/pykdJ6VLv5Ynx1vGQ0KPlOQKhX73SImme3iKLJ4v1gsfUi8sNoy36ORmPUaQSSnaLtF
4KrF/cI5lk853SzXuJ1EKqLNLsb2sFFgmUQ39nswaRpIaSHlqKVRw+PCYug2sFWonZ/bfjxp
uJT+206kB4aF/60uFSncQNg0hit6cuEyVoHQNInyoOHyGIwdF4cRjDkzGWzGjsSOemPAOWk3
u+16At8vabtBGtkv23aFSxCGQgqS3W5/qpjA7XMMGWPRYrFCjwBv+MMtkmyjRb+fxilU0NBy
trByS4tzXjV2Ho7m5b/PP+84PMT/BVlBft79/PT8KiWEMQTHFykx3H2UR9DnH/CnzZ438I6E
juD/oV7sXFO6ttETC5yFCGhxKyfcN4irObN4sQHUue96I7xpccXjSHFK0VvBsgXtrzP+7e3l
y13OqRRFXl++PL/JYY4r1yMBPZ2W3hyfQN0sp53Hx2tRmfJDoCCg0DIXyVjhRSQGLTH28fT9
59tY0ENSeGhwkap/QfrvP16/g9j//fVOvMnJsXPQ/JOWIv+XJc4Ofbf63bs4z0yzpclkxfUB
/7aMnnABA7LNycUlN1YXerBTJHUj2l+gCNmWnUhCCtIRju4Y55J37AB46i5il9c3X0AyZ0ag
nxyaKqttXlo2sTXhqTwtm9q+Sqn9OK3KpDnxIMZG2YMqpfJhOFNUZ0wv7t7+/vFy90+5zf/z
v+/enn+8/O87mv4mD7d/WRkHe77cZphPtYY1U25Q1BgMMkKktqp7qOKIVGvbjqsxDFyGB5d/
w6uR/aat4Fl5PDp+iwoqwApQvVs4k9H0h95P76uARgL5DpJ9RMFc/RfDCCKC8IwnguAF/O8L
UHi97YQdk1yj6mpoYVQreaPzpuiagd2edS4ruJNQRIOUTl88ioPfTdoek6UmQjArFJMUbRxE
tHJuS1vEYHFPOpFolteulf9T2wXjd6HOUyWI14wstm/bdgoVbmYU/THhKTdUOSEU2p4W4lSy
0JiR2YDe2x0wAHiegYBFdZ8rbeUTQIZKsHzKyGOXi3fRerGwZPeeSnMT2sYE46AdspyI+3dI
JTVTb69NA4kxJw/z3nD2q/Bo8ws2rwoa5Ioskkb2L7NTYBncOeeTStOqkRwJfonorkIWCbmO
g1+mprmoJ/Uy2ZE4oGuXXKs6rgt2PQbM9gYazeJi+s2eYnoQSIZwiUJjmB1l4Hhk76J4h5Wa
w8fYZwF31KZ6wLxCFP58ECeaep3RQGWg49cnUV16pfJMCV7MThVSEAJbsFlCyOke3u6Sfa4m
3ZD8lLwQeOAFTk3IY41zBT0WWzOG2awu/gkFKh19UYRtsYzHkWjKmtje+fI6OFDvp30iTn91
h4LT6acs5sab5u0y2kf4A4HuujZ6m/9ux7TBQvj0t+F0QfAquPkg7aTrx9yDwUkj3IeqwqPk
69I5qgpRE9Swdjprj/l6SXfyAMQkeDOE2tsAEmJiVf89gfuWGgrxoFYj6MMXoVYeMtIdnK/a
0Byg8czNAoUm16W+7KuAykuvBrrcr/87c27CpOy3eNg6RXFNt9E+2C91znuTVuX95elCd4tF
NN3AB+Lp7GysMaT2GJATywQvvf2iu3PyOelTV6eETqEqee0UzHKElmRnYvuJYUy/pSi2rv+G
9KkUOwZZT8e6AWXeMcYJAeBTVaYoXwLIKh8CXFLLovB/Pr99kvTffhOHw9235zcpwY2+Mhbn
qxo9UZs9A1BeJjxjciXlfYTixaTIcII7XxCwchvTaBOjS0SPUjJaWLOCZ/HKnSzZ/4F/l0P5
4I/xw18/375/vVMWqNPxVank3kF2ctt5gJPYb7v1Wk5yLXTptiUE74AiG1tU34TzdjIp8moM
zUd+8fpS+ADQQXHBptM1gQgfcrl6kHPmT/uF+xN04Q0Tqj396Paro6/U57Ub0JA89SF1Yz9W
aVgj520KrHabbetBJfe8WTlzrMGPiLGdTcAOBHtzVjjJTyw3G68hAE5aB2AbFxh0OemTBncB
E2m1XZpdHC292hTQb/h9zmld+g1LPk6KdpkHLVhDESgv3hMTf9qBi912FWEqW4Uus9Rf1Bou
ebCZkcntFy/iyfzBroRHfL82cJrFOXaNTqlXkaM70BDJZ7Eass8JH8OzzW4xAfpkvQGt37em
5oeMYUdaNW4ht8iVF0mJmF1UvPzt+7cvf/s7yrFlHlb5IsiV6Y8P3yWM1t8V56iGLxjGzjLp
+qM8+V61jnHxv5+/fPnj+cN/7n6/+/Ly5/MH27TE2eZw8TnHrzELncxqWLCyEwYatYENy1Nl
fZqyxsmqJcFgJ0ms+yBPlZ5hMYFEU8iUaLXeOLDxedSGKjsDJ6ykBJpQr/jbbughenifz5W9
dMMRo4XUelFPjV+QbSQL7+AuP95TGZPKnBRScqmVA4nnuWdVIlmwqubCPqFS5fQj91kDlt2p
ZobsVs6FSsTCMA5HopVxglOdKEglTqULbE4gvtTlhUNucyf4AlSifM8mECkCP3i9udby5pvM
tE3Bauy4S/ss9k4rECQWbMVF5cRylxiXHZaAJ1aXDgBZNja0swNeOQjReN86I4/+lz0LLEwI
fA1lkOwsjUNGnPTmEiSPWC8m6gDs8PdG+G5enBAzP2rGhVcXPMIcobrQV4BskdiKGTJdOQ/d
Uprivb2wBTtIHpeXLqzyRSoAwjfEZEQwO0hU+kHPNkHVbody19rWnmp8QLDgWo2Ki11JZYiQ
ThzOwjFU0r+VGbzVkoGiglVfwlY9GRiiVDIYageXNrBRE69fnhhjd9Fyv7r75+Hz68tV/vvX
9E3kwGsGXu5WbQbSlY6IMIDldMQI2MvIMMJL4a2j/hlrrn/DWQ2uysAVGPcH1+dZiofnvJTr
I2msT1CodIjKPmIk5twh8Nz3gVNwjy0wC7HHwx7OkrN+QsNOqjAolpzK/ch5DSP5FAJPUQzN
8+kQ1OW5SGspEhZBClKkZbABQhs5c7BRvNxLFg34yyQkA89Q654k1I3HC4CGeGlI/ChPBtGH
GLLfI1nAyeXYYA/MsjXBqPPV5F+izNy4WwbWpY8FyblL74a5UeFnJASesppa/mG7FzVna6De
ICWuu6hFU5dCdKiu/+IYohlzscJWpxdZXnqf8KJiyY0vArUfd3NENXm/AybcnvJFH80JPBfJ
9PPPt9fPf/wFr8RCu96R1w+fPr+9fHj769U1Mu/9D3+xSD8UOXSIBuGwdVN3e/0s2S1pwAnA
oiEpqRr0JrOJJEfkvAezJlpGmIxgF8oIVUzGyVH0ZJyWAcnVKdww32Wz/z7aIqMRochtfRU5
eVLXxdjrggwTeLMDeSjMXU8gT6mi4Y4HInkAQ5cb5Wp34wxw6FgpbDVZZh3+8lfk/mLuT8dm
xRFg7UbOknPD2DqLRp+SZW4d2StLYyR/aD9kKWIIljkihsHBgT+Ht6csoZAxF73v4el0bJcW
3AmsfCwLK7Kw/t2drrn7ydXzK85qPEpOPfctweyCoQBz4zxRJzdxUnjhFA0hUBXU2T/ywE3m
a6fkws9OsIPmJC8nSOjMaReI5meTXG6TJEd8amya+ohtc927rmqcZ4CMP5x9D9wJskPTAtkj
1zpux2LPqL0bzFZzQFqapQHmmOyNUAgJOFfV6nKYVgYB2dHvK5lbK9ogK/wwqT0dJP4qnAOD
tp0UwlARpWANWkvqXdTyyoRA4ZYfchwtVpYmygC6VGSjcrsvZF28EFo8v2KvpAaXux9FQ6WM
ihVJ2aq17BuNhqjbrSw1Qprvo4W1w2V963hj69CUK3rX8pqWk7iY/XSAbdD8gpKca8Zaa5+y
2Jlc/Xs4O1yo/D8EtpzAFENXT8Di/vFErvfoic+e6IlXKOpYlpC4w/aWDTB0VqFTIAPmgD+T
K3MO3xMPvadaxfguXqOvczYN2BI6V633ummBF9ZWgZ/M/y2/hG36xI+J88P/UBJk71beOvTy
F/N+TipQQCdIqAI5ta4WrkGc/O0fIg4ycPxy3/vawA95tMC9rfgRY87ee6kX+w/Rq8hH9vCi
GMTx1eP+aL/oyl++kkzB4E4GnbEFfYztWh5jv5zdC9kFUpTWnsuzdtXZwSgNwJ12BXRVGgrk
tTSQQTddr9isXSsMbrOSteI6iz5cb+0GeJhgoYjOFk1p9rbFfNJ4936Da6glso1XEouj5WRu
V8sbe1C1KljO8U/yaMe4gV/R4ujYdB8YyQqcIbDqKUgDbcx3Rf4JnnUOJybiAGNwadHUP251
dVmUrl11cbhx3BXOUVfwTrZj1LuQhKDzuU50tBfJstzgl8t7a2KleFHit39FVEIvVhx5wZxA
CCcpqcjVgrTyyCBAxsFXR5gatcHF2PZDRpaODeBD5jLN+ncnaicAkoE6G9HAvIPyIfPyJoNJ
kGem84BqK+1en8HqOXdY2wcKvgmhrKV1/gtfqk5vyLAQpqphjqcZQZUhu2i5t5N5wu+mLCeA
rnL5oR4M0Wq65sr9Bw6PbBfFe784PBZC4GBlEomUrXfRZo9u7xrOayJwHIR/rlGUILk4uyFu
hboNWYP7tNtlGXuYn3JRZqQ+yH/2jWNri+UPFe/jbwdAUzAdL1yot2gHwlETO45A4g6wyMIB
B/sO8rm46QNRIHL2QJALaxeyilPJxth7Agj2EaovUaiV7dLlzB+FUBetE7bOxjfqzL85gPMN
lYR4LMpKPDqHEhg4ttkxtCet0g07nQNPqzbVTYoLx03eLJIrf8JVBRaN9gezh2I8xEjLw2eM
ockyOZwQzSFNA5HVeFWFhycS/+G4v4RBGjZW0Y46r9NhtqwHU4DB80zBvc45FLxJSOEkAVFw
P4Cni5ULEGKs8kCYCCAx+gDMJOD0qNOU9cv5KiGOSoClYFFwhCdViZooVGXDdwCfhOHoj+gc
Ylw4zwO94s2vbyTQPvuJTzCc+rvFsvVrldML5u2BMhK727Z9oRGoFd16Eka4UaC51JRTkhK/
WaMTCDSbErk4horGvVntlrs4Dk4A4Bu6i6JZit1qN4/fbAPdOvCW6c8yCky0ys7C76h2MWuv
5DFQUwaG6E20iCLqzlbWNi7ACDZ+Cz1YMrOBJjTDPinXs+jBKRgpmvA8Djx3oPFCBYMmk+aL
Vlb7nsg7IbTiHvpaxykwHEznbTFz9Qf7CNc/NlLrBnLbkYxLtGjdZxlWE7nUOZ000zPx2o7O
H6c5Vo9ym8c1/Dc4i5DxQ+z2+3WO3wJVxjFmrapsO7qq6hIBW88DpkxyIXZ2HACavKB/27C8
qjwqZW7g+p9JcOlkAgOAU6xx2y/dZHlQrfbXckAq8lxjpycWmZ0rT2Qn6uKGoHvMZqEAoVwe
vGeXSr8/wl9YPJOzSEyGCO/xFxCUNNSF3JMrswMhAKxiRyLOXtG6yXbReoEBHes8AIOcu0N1
TYCV/5yXr77HcN5H2zaE2HfRdmdp5nssTal6DJqWk5iOsRxHFDT3u620h0q51lPMzC9Q5AnP
px1K8/1m4WS67DGi3m8DqgGLZIdyGQOB3OfbdYtMk+JBUcwx28QLMoUXcGbvFlMEXALJFJxT
sd0tEfq6SLn2/sMnW5wToYRmcPuaI3FxJJMSxHqzjD1wEW9jrxcJy+5tQzJFV+dyx5+9CWGV
KIt4t9t5G4HG0R4Z2hM51/5eUH1ud/EyWrjRVHrkPclyjqzVB3kXXK+2gQBgTnZCnp5U3rnr
qI3chnl1muxWwVldk26ypS7ZxhVfhp6f9vGNVUgeaBRhjzRXMFGwVvaQ7eGKZlEF8vGFOvfl
9jTfxcFmrAdVV9g/zQSyltg1rn9VmKBpqsTug+X2992pwWUJSupsHwUyxciim3s8Ihyp1+t4
iaKuXO7WgAWsrDGkX77SYrlBz1x3MnNXwa8Agba2G7peTHzSkVqtp+aREV/hw5PwqUXsiAUn
x5DgBsgDLjjZvenf8caR8BoLZW6XmTx88Ooahzy7ABfaQfyarfYbPGOrxC33qyDuyg+Y8tDv
Zg1eFLbasYSgFrhAy+o8EFK3WoPqPc8DyhWwis3XqxvdGV8prOfhhNUNwRvtkcr6FeIZ42wk
TATDNdj5Ndthz4ROryBPs3fU5HIxL6IzXqfE/Xcxhwu8MwAunsOF61wsw+WiNaZHt0dYE8PJ
jsJBE7co2+AUm6pOFQO3w5eyxm0x/WWTqTDijhWsIt/HgYcxgxWz2EAqH8Bu4yWZxSYzNe92
bLbdGay8oGbahfHiHxmwbduGkNfd7tbHEs67h/zZ7VHVo11IOMICvUbxzUXROM1csygOBEoF
VIvvSonaBVH+Ox3Sh6fHlDiaMuBDnlLZe7wrgIqiGkuVYVerFEyscE01HpoC7hAV2BBTMwyp
jK6CoxKC5nWvIY0z2DF2/lGuA1N9e/7jy8vd9TPk+PnnNCHfv+7evkvql7u3Tz3VRI92ddkv
2Ql12iEDOaWZJWbCL5O6b7wdDMx/JLDR+i51qznUHkAL72qM7f+J17+rzOR9EBdZ8cfPP2Hk
H73cB3JtSlkZXzWkaHGupKLLxaIpAwGzSQ3SN64KE5Ri95kcgGWyDb/AhtyOryjFVexethKd
97L2VwR3IPcsSxxt2ogkzW5TH+JlgJcYCXNJtXq/uklHabyOb1KRJhRnyCZKD9t4hYeRs1sk
uxC3avef1lICvUWl9hwy1ep9UpmoB4NUGvRMkMq8lTSOu+Ph/J434twxTHQxIRB88y2I6849
w/Fpcicu0sL9JefJ9W+A39Mw/n4J9R/7WWnE5DxNM6YyQlg2+9DwV+enXPmVD8qikg979iuA
7j49v35UuR0mZ44ucjrQyt4pA1Rp1hA4aBA8KLnkh5o3Tz5cVIylB9L6cGASC1ZORnTdbPax
D5Rf4r39sUxHnGPQVFuRKUzYDnXFxZFl5M+uSrL7yZHOv/346y0YPKvPxGb/9HK2adjhIJnW
3M2jqDFgfO/kNdVgoVIz3ueeZ4HC5aSpeXvvhY4eEhl8ef720U3T6ZYG3xAvHa+LgdRrZ4wR
8cgErZncmO27aBGv5mke3203O7+99+UjnjpYo9kF7SW7eKoB6zuFsqvpkvfsMSm9JDo9TB6G
1Xrt8mwhoj3S5ZGkuU/wFh6aaLHGz1GHJqBrsGjiKGCdNNCkJll0vdnh0uhAmd3fJ3gcloEk
+CzpUKiVzG5U1VCyWUV4gEybaLeKbnwKvQlujC3fLQM6GIdmeYNGsgvb5Xp/g4jiIvFIUNWS
qZ2nKdi1CQjsAw0kLQeW+0ZzxmLkBlFTXsmV4Kqakepc3FwkTR53TXmmp1A6+IGybe7RYNDW
yWHdd/BTHkgxAupIZucKH+HJY4qBwQpL/n9VYUjJVpIK3s1mkZ3InQyKI4kJ9IC2yw8sKct7
DAf8wb0KnIthWQbyDT3N4cJdgtwhLHND6lotq4/FMSONkehQUtAouJ5BI/qSq79nq0C7N6QE
cKCkqjKm+uVjEpqv99uVD6aPpHK8tzUYpgaCwwb7dRFScidIyUAKVdPpYRU4gWd9pGaLpned
kFhMs6UJGng4sRaB/q1fOSijxPLNtlG8An0Phjo21HGft1AnUkj5C3OZt4juE/kjUIF5P0T3
uSHTX1jKebTMManMjBo+tuYRrKGPQHCgryBds2uIaVOQVGx3gZjLLt12t93+Ghl+1DtkoFXv
8hY3d3Qoz2CA2FKOB1GwSZOzFLQi/DKa0MW3OwnGBGXBOk6L3XqBMwIO/eOONvkxCkh7LmnT
iCpsoj2lXf0aMbisVgFTOZvuRPJKnPgv1MhYwKTNITqSDBzL1aq9Td2CkuL2LBn58ybdsSzT
ADPjjJmnjOEPATYZz7hcH7erExvxuN3gHInTu3Px9AvTfN8c4ii+vcNYSLHmEmHnsE2hTpbu
agK2BQn0UY22Idm6KNoFNJAOIRXrX/nceS6iCI+X4JCx7ADRMXn1C7Tqx+1PXrA2wKQ7td1v
I1zf45y5rFCpMW9/pFRKts26Xdw+fdXfNSQV+jXSK7+9Rn7xVL2mjTIJ9BgCnDbfbwN6bptM
WdqUeVUK3tzeGepvLqW22yd7I6g6g25/SkkZTzIEBOlun/2a7vburfMukLzROVp4xgguMbhk
4pc+i2iieHl74YomP/xK5851QM/qUR0k57WEsCW3idvdZv0LH6MSm/Vie3uBPbFmEwdEV4fu
UNaB9zjno5Wn3HANt+vkDwJ3IzQCGhd0qpWRbFO0wselCZKcRAHth9HrLNuF7GMTkn9N6yLv
LjypSYOmajM6NSqq+xpRnOVkt1pj72VmEBUpWDYtd6zigGbboMGmW97MgThZFlXKaJneJlMj
DHezyeT1kTSF8LWGpOEqcW7DYh8lxW8hh2fQ0zHet817TLHVaymvrM4dy0yNeGT6pdoD0zxa
7H3gWatLJ01X9LBbB8K7GoprfnuCgWgycdjs1mVD6kdw5bvxLUjaZsvZVc1zIbuPM3j9TBCf
VXTw8LRxn6Shlw/TTMrk2oQUk/KvhMz1Oa0v8WbRSv5YSaO3KDfrX6bczlLWOZ9y+Eo1e+rf
Hfjv5Z2f5wDuulHyQ1IPehTqZ8d3i1XsA+V/TZLCoVMaQZtdTLcBoUaTVKQOabgMAQXVEfIV
NTrjiaOj0lD9HOuATEwUIP46aUPE8NQSbETOjilowOYFa9BrT2rUelmB35znMKNxJDmbBtww
kXCw7zmmYUGeS/Sr8Kfn1+cPb5DZ3s9VBqbUw8xdLB0INWGMmpoUIiN9bqKBsifAYHKvyANj
xJyuKPUI7hKu412NNpYFb/e7rmpchytt3KbAgU9Fsq7QmUFS77lBefg1/tT2w32kGUndyHP0
8QlswtC0pGVLtFlbZvuNK7AyK3e8yR8L6h7UPcQ2we9h3dF+Ey2fSjfdAReoW7H3FCcFR+HY
V6i3UMnzFbh9o0p42TSo90mqkvCcIScksXS78tTMmfOQJyH3Xk5Kk1D49fPzl+nTp/lcjNTZ
I3VcGTViFyuLeGdfGbBsq6ohKAhLVcxS+cXD60EV8HKL2qgDfEhMO2gTTRaw0xsnH4/dKuU4
grWkxjFF3Z0hh/q7ZYyhaykc8pwZmhVeN9xkjruDhc1JITdQWTuJcyy8OJGaQQLC8NRDyFQ/
RSHWVRGYlfQaqrtu4t0OdQG1iLJKBPqe8zRUM2zNycosvn/7DbASopaosqkZX5r9inLSLoMJ
CWySQDAlTQJfLvNkV5fCjQVoAYOr8L272w1UUFq0uM5qoIg2XITEbkNk7s33DTlC33+B9BYZ
P7SbdoMxZn09NXVvbw2DzaGXbjSps67wq9agDyKTC2fasSENt3NGeU3ntKkzdaMjy0tZxoQU
8n0SHex4UQjmyEpZ1X9ijL5yjBVOF2pso6ybVsL01rUAra3gN4CR4R1vZB0jcLLEeJVzeLZI
M2YZcShoCv+UWOWRQ6RoHd7XsfoGDCSa7FRcWYwvV7Uqb19tjn1wQuUqtBuQVYMEx+JlKdyV
NPSUlkevFiVVlQcreo1kR0zgyr8noA7OXMmxwY03LWAM3BGEE+p+BDsh9m2wYhzGGAQXSH5s
29pXFUQGDFl2kwu2bMAI0V8nEMhVwdlFvAND26Ezlf0QBr9AcneuzgEIHoMEZ5rlcjnSE4NY
uDBxlgPORRb1YA2V/yp82m2wouPCOx4N1HmiMoRB7ZHB85jOuGjYVL2t1E3C4nwpGzS6IVAV
grrD1h4jDsgyy3JaaFmoVlon/ugvDeTqqMsWtwcYJqhZLp+qeBVWBPqEAg1kJlc/dQMqy4Xl
C4Qtz7LHyUFpzt+piGIx7mYt1GchRYzqPLnGofdT+7DYcsaEgPLq+5SSbTw6AZIBqkQ4OfGl
CwY1M2k8mGSPXJsxCczPQwrt/K8vb59/fHn5rxwK9It++vwDYylMsbCBT0+QNXS1DGj5e5qK
kv16hT+muDR4qp+eRs7NLD7PWlplKfoFZwduT9aJZZDpDiQKd2o9awW1O7NjmfBmCpSj6Wcc
GhvkYsis6qV4reidrFnCP0H21DHDghNp1qmeR+tlwJGox29wXe6Ab5fYfQTYPN3aKQFGWCdW
u108weyiyE3JrcFdXmEqEXVY7RaRO2PcSY2hIXnjQiBzxMoFFUrDHaNA2dv9bu13TIeCkos6
oJaDr8zFer0PT6/Eb5aozk4j93bwQ4A5l6kBVCp8vvqysPWnsqeqjObcXkQ///759vL17g+5
VAz93T+/yjXz5e+7l69/vHz8+PLx7ndD9ZuUHD7IFf4vf/VQuYZDpiyAT5ngx0Jlj3NjuHlI
LJ2SRyIy/ML3a3KTsXnYhDw2NeH4FQi0LGeXgJ26xM4eX+XEVM5eb5TYg3Q+ci4lTL/POkrC
5Oxn/5WXxjfJukua3/U+f/74/OPN2d/20HkJFkpn24pIdYdoDSYG7DJQi/odqsukbA7np6eu
9NhPh6whpZD8LmZ5r9BciuOONbdewhWkBdOKRTXO8u2TPljNIK1VOrlWZk7p4GHpfIDmnPij
nSw2b0FBcpCgkclIAmf3DZIQi2Df8la5JZpIy0ucVvFwxlGw9idCR7lwSqC6LHmY5M8/YXmN
CdYso2enAi0N41IpoFudZ1hHuwuSmYhFYfy5AUEpw1k9odwcVGzlwODHw8BRIQDmGs4BqdEQ
7jaIh/gtkCUpxIYDTfD8AGSWbxddlgU0GJKg1PsnMLCqhZSJlh5hgE0ylkpMHwEm2Jig0U7e
TYuAmgEo+IEHNolaTy0PZGKUyBb8hcPYyeHnoJ8ei4e86o4P3lQPS7Z6/f72/cP3L2btTlaq
/Oe5A7gfYshswkRAsQP+NhnbxG1APQaNBI8QUeWBoGGotruqHHFP/pzubs36VeLuw5fPL9/e
fmI8OBSkGYc4l/dKJsXb6mmUJnxcThZmcnlYOKU1+jr250/IhfX89v11yqg2lezt9w//mQoz
EtVF692u02LWqISvdkuVFMwOTeQSd/fG3cYco9NWhnK8AD3XWLsE5HaADyCQf40Ak5XLQliP
AXCWmyrRb2twfhKBCT6nVbwUC9wnoScSbbReYIrjnqDnc5yFY3D0xOr68cIZHth2qELK0yEL
iaEqUhRlATmS5slYSmrJ+eCvMT2VPLUvrL7V5JHlvOA3m+SU3aTJ2JWL5Fzjl80w1+ei5oIp
y3lkxmHBO/HuDKA7yFtW5aTKeC5lunUU2xR9tlOvEK8f/CDBemkFeGxVlU5Yb/IO5S9fv7/+
fff1+ccPycCrYgjjpLuQpxV+vmkLkiv43gbR8KYTxg57ZS6JnqLkFPMYVqjsUV6qymPhq1co
T3YbEbBu0nYt7W6NS10KPXPD9FPTHXxryF70D8+wPtjkKfObwcLD9ew3OGwj7wnIm51mh1vK
6S8fMNjskUsvwqhLgORo9AhEtKGrHToLs6MchEwFffnvj+dvH9EVOOMKp78z+EMF3qBGgkA6
D22TAIqg5SwB2ATNEDQVp/HON+qw2HRvkHobHlJs8P0SmmKN8obfnDKtI5mZEXn4lTPLAhK1
qKQbAee4nohpqhi3ltLmTSldxv4K69fHdCgDf3ZjiOpVcT+3cvWymJsEulzuArFI9AC5KMXM
+dXWJFotlujQkCFol1iR3BraKOmiNSM1OAdiXqo0YnaQDXwS1HtPRy5oPlmFU/GkHfZgBMN/
G4Jajmgqca6q7HFaWsODwqdDNMnLU0EoVKDAdfOySzNoUFRDQFk4URYBT4OEgOgouyfibWBt
OCS/UAsuHfUkIsHfSfvOhvB9wtEQvq8/eYghQO0sDbgebBcBK2SPCB9N31suKiCapZEV7fb+
tvFosmq3DThv9CRBOXmoo1luArFlehI5OatojU+OQ7PH58amidfz/QWabUCJbtGsd3tM1Tss
hzxZrrY2r9N/nyM5Hxm8jcT7wLtHX0fd7FdrLJW1F7df/ZTHkWPKp4FGu+UpB7QFyfObvOAx
26ZClLXoSMKb8/Fcn21zBg/lhM0YsOl2GWHOexbBKloh1QJ8h8HzaBFHIcQ6hNiEEPsAYom3
sY/ttEYjotm20QKfgUZOAW4kMlKsokCtqwjth0Rs4gBiG6pqi82OoNsNNp/3O0iZhsCjBY44
kDxan/RRjrQDjrkip1gPEj+G/oCBmB9zM9e0FdL1VGxiZA5SyfViI00hqLTI8ymGr+8lX5Yg
Y5Xc/WJ9wBG7+HDEMOvldi0QhOTn8xQb/6ERDTs3pEFfH3qqY7aOdgLpvUTECxSx3SwI1qBE
hKyPNMGJnzYR+qw1TFmSE4ZNZZJXrMUa5es1atze40Edj684kKGwGt/TwI3XE8g1WkdxPNeq
Sp/uJs0ZUOq4xi8Fhwa9FCwKeY0hyxEQcbQOtLyKY9yG3KJYhQsHrNVsiggrrBwd0TCsNsVm
sUGOGIWJkHNWITbIIQ+IPfpplQixjec/ryTabOIbnd1slniXNpsVcrIqxBo5VRRirrOzqyCn
1VJfZ5PSDQ35g42HOkW9rIbvmW/QSxkeJGaLbZfIssyx60NCtygU+apZvkPmD6KnoFC0tR3a
2h6td498RglFW9uv4yXChSjECtukCoF0saK77XKD9AcQqxjpftHQDmKT51w0ZY19r4I2cptg
phg2xXaLbnuJkkLR/IYBmn1AAhhoKpU1Y6YTSuGytyarUpYw05nAwcB1xfgY5OXR0cOhwqWm
gaperuNAeByLZrfYzI+U15VYrwJaiIFIZJtdtMQin45rJJYiK8J4qstB7RDskF7uIozP987Z
VeDAiRfbgPzknkq7G20sVyuM0QU5cLNDu161TB7zIbNyc6ZVYiXF0fnVKInWy80WcyXsSc40
3S8WSP8AEWOIp2wT4DLFqZmdcInHD2iJWOKGaBYFnbuGjBERwpLmLNoukcOC5RTUV1h3JCqO
FnOnhKTYXOMFcpxBWoDVNp/BYIepxiXLPdJRydSuN21r4kcH8NhxqBDLDTrhTSNurW7Jx28C
obWtazOKd+nOjQ82IRLRIkLFSbHdxegOUKjt3Acn8gvsMBmEFyReIPwIwFucbS7I8tZp19Dt
nOzdnHKKsTRNXulkvdMKAYNrgRySuZmVBCtsDQIcm5oLJ2Aui4sAErnZbQiCaCD8LwaHlAzY
2K675Xa7RG1rLIpdlE4rBcQ+iIhDCIQTUXD0DtQYKWVPnqKnhJk83hvkitWoTYGIpxIlt+MJ
EWk1hinUpFctvAdO1Em4seKwCcCKOaQmaO4Xka0LUZwRcd67DUgeB6Thwncn9ohYzmrZR/C2
NK4SIO+Txy4XVoZsQ+zp0nrwteYqJBVkN7PDxfV440DQHcsLJFSquisXDOuxTXggvNZearha
HCkC7rYQ1jMUrgEpYt4LsqykgXgHfSm3T9NB+oND0GDfpf6Do8fuY3Nzo7ejQlRZg5hSKEXK
LoeaPczSjMvjrL2CJ2uYf3t7+QJhtl+/Yl6fOt2Z6jDNiH00SQapq+7hYSOvhuU7SZQmStql
jcA6OW4hSbpcLVqkF3ZtQIIP1rw+zdblDYienD4PTtnYZPRFB9+kv31I7+QyPmv1iKK8ksfy
jD1FDTTaW6tLyrJPC5SidSk7ickMXp/fPnz6+P3Pu+r15e3z15fvf73dHb/Ljn/77k7hUE9V
M7CfKs9q74QrDMWIFeWhsR21xhZS0kAQIXQpmrxpfTmU5onzGqIZzBIZ+8h5ovQ6jwd1xrK9
0R1CH868ZsEhkfRiIkt6FD0+4zk4JwB63DgA3Uqmy0CH2lhCOykVrQKVKV3sjrl1iWot2f2u
sQPTC1nPgTcVjdGPxM51OdNnnmxlhU4joOsUjsR+JQd5gAUq2CwXCyYSVcfo18CAS3arlb32
iAAyZHitjEvSgJQ8Z3zw69htXcipQnwIT5Wk6Yre/9FPrkshN0TwKyuNRrQMDLe4dF74yM1C
jxRfvNV5HahJZS00Ri/+2gDccpts9Wjxo/4hhyMZrxuYS2eaej5oAt1tt1PgfgKE9N5Pk17K
lccqKQwt5/eVPoNzxoODKfgeEpqG0XS7iHZBfA7RJOMoMBmtDnX27utgtPLbH88/Xz6OJx99
fv1oHXgQ0oROV5WsQ1sm99YTN6qRFFg1AsKElkJwJx+csJ0MgERUte3sqkpRDhmP8NI91gWK
lJczZXq0C9X+qFChcmvHi7pEzv4asQEzwITmBKkWwOMkKCLdd8oD1APebn9ESG4k1PrYfa/G
vueQKIXmxaTiwMg8ItTgWTnh/fuvbx8g50kwX3B+SCf8BcCIWG4DhlRVzqk2TgskwFDlSRPv
touwHwgQqXDCi4CNhiJI9+ttlF9xc3TVTlvFi3BQQTW8GrxuwvhcXvkB1ww11JTAcREsDuh1
HHQwtkjmOqlIcJVLjw48Kw5oXKVg0KGgbwqdFeGqcxotIc/z3Ph6mtAATw34TwlO8S4CWhad
+ClZLehD/eFM6nvU18yQZhUFk9lxkwFAOzwiooP6uvTUpDSUbX1sGgKNKKH7V+hCnjJA9p4U
T3KrSz4hkGNc0txLqWdmMna7Kt8F7D5HfHgxKfwmEJlE74g2Wq0DUZoNwXa72YdXnCLYBTIT
GoLdPhDncsDH4TEo/P5G+T1uPKvwzWY5V5wVhzhKcnw9syflQ43lV4bCjseeU62UjQKp6iSy
ooe13MX4nJ1pEq0WN85T1OTUxjfrRaB+habrZr0L4wWj8+0Lvtpu2gmNTZGvF5E/KwoYvuMU
yf3jTi7J8DEFPCwuRiXt+ta8SdmXBjwrAN3wjuTL5bqF6KwkDR/iWbXcz6x5sO0L2HObZrJ8
ZnmQLA+ke4R4ptEiYM6ng52GYonPRUJVnVIEO9waeiQImAn2w5IDn7lBVRW7zQ2CfWAIFsH8
FTsQzV1lkkgerctAMOprtlosZxaTJNgsVjdWG+T32y7nabJ8uZ7ZqVocCx0/4N3h7zFS86ey
ILMT1NPMzc81361mrh6JXkbz7JghudHIcr24Vct+7z1B29EnQozvWEvNjqC2RPW5NfU88iVA
54Dq+QpeWyFFatpHlLVjVtRdwQaEpVWo4aANwDco/P0Fr0eUxSOOIMVjiWNOpK5QTE4ZREBF
cW1ulxlZqbrj2ih2JoQrDCvPMRp79i6cMuHM6BhE1+kKK9zfPHfj4/R9qgmWtVKP0/WxlwUa
1lHuDllHAnRAJqCP+8lYWpNm6c5xUzOSP9nrRUKNQ5FpyOnvsayr7HzE8z8rgjMpiFNbA5kF
7S7LGetdc73qZ5IpADYQul3W1yZl26UXzHhUJcMc1Gh2vJuvLx8/P999+P6K5GnTpSjJITDc
RAensXKgWSlP0kuIIOVH3pBshqIm4JszIi3Njep1OigAA/od1Uu5dxEql6YsmhrSbdV+F0aM
nEDL//HCUwYb82J/Iw28rDJ5NZ0TiCFH0NBKI920NEkvM9naNc2Bt0yytrxQmY2LI2oRq0mb
c2EfAQqYnA/guYhA01zO6hFBXHL1DjVi5GT0J+uoTZewPEe5aUAVTjoeUIp1jCl1lVMrhDEj
Kakgb/e7nY2BVCYg6amBO97iCssgmpFkbeEBS24hKb5lIbW/JD9nLKRvUQt/qmBR6wEyFYwL
Ur+EvPzx4fnrNAwvkOqPQDMirAdoD+Gl57OIjkKHRLJA+XqziF2QaC6LjR0TQRXNdrbd3VBb
l7DiAYNLAPPr0IiKE4fTH1FpQ4Unh0xoWFPmAqsXIqJVHG3yPYNXoPcoKoPsCwlN8R7dy0op
ts8tkrLg/qxqTE5qtKd5vQenBbRMcd0t0DGUl7Vt5esgbONKD9GhZSpC48U2gNku/RVhoWyr
jxElmGN0YiGKvWwp3oVx6GAl/8LbJIhBvyT8Z71A16hG4R1UqHUYtQmj8FEBahNsK1oHJuNh
H+gFIGgAswxMH9h5rPAVLXFRtMRM8mwaeQLs8Kk8F5IjQZd1s4mWKLzUkbaQzjTlucLDKls0
l916iS7IC10sY3QCJNNIcgzR8lrFz6a8wdBPdOkffNWV+n2XoKCzZo8PpEg1x7Q8AjE/A5V0
vV5uVn4n5Ee7smQyJhHHrkCnq5eoZvrATr49f/n+553EADs5uV100epSS6w12w54iJmAIjU/
4/VlQMJ88QP2EKIJT6kk9duVRS9ccJeR1yi1jjcLYwI5w9wcy62XN8eajt8/fv7z89vzlxvT
Qs6Lnb1vbajmuyYDN8g6PGLaxlLebf1aDbiz5UgXQzJBQqXgI3ioJt841rw2FK3LoHRVarLS
G7OkGCA3raIBBTfKgOcJ5N/IPV5QJU/c2d22CijGBW+tR3bKSguL+uSTIg1L1GKLtX3Om24R
IQjaBoavEEZ2melMvnduwrEjUqS5TOGXaruw/SNseIzUc6x2lbifwovyIg/Yzt3yPVJJkgg8
bRrJM52nCMgESSLkOx72iwXSWw2fyPI9uqLNZbWOEUx6jaMF0jMqubX6+Ng1aK8v6wj7puRJ
csBbZPiMngouSGh6LggMRhQFRrrE4MWjYMgAyXmzwZYZ9HWB9JWyTbxE6BmNbA+wYTlIZh75
TlnO4jXWbN5mURSJwxRTN1m8a9szuhcvibjHA871JE9p5AWksAjU+uuSc3q0k8qPmJTZ/q65
0I3W3nb5/zl7tua2dZz/imcfdtr5dqe6+CI/9IGWZFmNbhVpRT4vnpzEbTNfk3SSdPd0f/0H
kJLNq9L9Hs5pDIA3EARBEgI2QRzwCHNx3dh0lI6fOCwjOaG++rmPdGT7B+rHdzfKxvJ+altJ
S2SeubcJON9YnLvHQGPT3wPKshUMGDlwvjiG4uFZO4aKY+vtzY/Xn8qVjdbXMj3Yb6uHbbou
6mXvuKEftpvrReT4aGgkWNofRy5o9Y3A7P+Hm7P1Y1w+iVryjlnuXhAq5xHJ65gV9rcWqQBO
inPithtHWwPiyGPnwmnLfgk1WEtpn+/LIazX23R1m0/aSGVvD1k13Eqx0FddEJwM/vDt15/P
93cTfI573zCkEOa0aiL5W8XhKlBkkFDjM55LLCLr16kjPrI0H7maB8SmIPHVJm8TK9ayyDhc
eNTChhx6i7lpyAHFgLIVLptUvzQ7blg011Q5gEzzkRKy8kOj3gFsHeaIMy3OEWMZJUfxD+Xk
S66LnYiuDkQE2dUMRdKtfN875tLd6AWsjnAgrWmi0opNQXuKuSBsMCEtJpjo+4UAN+gwN7GT
aMFBbfhJ0xcO0azWLIikhMFqVkLDfL2dhtluyEpSnfMeaPefiFBhu7pp5Gtcfp2aKS8ovEPJ
ps2TzLiUHeHHkuZC0J37JS1zjIrlxFcp2zeYyQt+2FXQvDiHwxu83hz6d47OnWUA/71Jx8Mi
TRGJKXK3KoJyCQ13upuVZfwBnRjHsNKy2zoYJohSLRPxEnG+lv6lwllKFquFYhgMTxf5fOVw
z7kQONLYckOudbkHccuHbhxPPrzukvQ5/2uq/R1xxKuU8K50d5vjVZo6ghxzY5PgUaGyt8+H
R9aOD4slvjpMjaF/oNVW3tIeCG6sZAv2hn0MgkK84xviwk5/3bzM8seX1+efDzzcLBJGf822
5fA6MHtH2Yx7876X4979dwU10dzeP5+u4b/ZuzxN05kfrufvHYp5m7dpoh83B6C40DJfs/Dy
ZcyuNlqOt08PD/jALrr29AOf2w3bF7f2uW9sX6zT33DiA1hflGJHyiEAtVxis98Gmta7wIcn
MQMOOqJuqLWE/jB1QbkeswJ1e9S3AuvGOV86wMdO4j/XHTmpYO0p83KBt0qq3wucbz2Wz3bE
Nn3zeHv//fvN869LDoPXn4/w7z+A8vHlCf+4D27h14/7f8y+PD89voIovrzXH6/wUbLteJYO
mhZpbL7ZMkZkr8vBRm6HrO/ngJfp4+3THW//7jT+NfQEOguLgAe2/3b6/gP+wZQKL2M8ZPLz
7v5JKvXj+QkOWueCD/d/KWI+ChnZJ3L2xQGckNU8tLyhAmIdOYLBDRQpWc79hd0tRSKxRsUZ
bHDahHPzni6mYeiZJitdhPIF0AVahAGxjKDowsAjeRyEU5b+PiFg7rkPnddltFoZzSJUDvcy
PEc3wYqWjeV4y71TNmwLdq55bGsTep5Ofd5gjSwX3H7npN393elJJjafvle+w23xbFT762n8
wu7hdsYvp/BX1PMdQfuGSS+iZbdaLqdouGawxjiT8RY+s65ZuJJ+SxQOB/AzxcpzBDgZj99B
5IhuMhKsXcENJYIpNiLB5BVC1/ShFnFKkhBUBDeKnrAI1spf2a7iFxEP1CHVdnqcqCNYWcQd
EZHdY1kS1NXUAAXFW3WEDh9TicLhmj1QXEWRw0t4mIgdjQLP5HN883B6vhlUtnTbpRWvu2A5
qUaRYDG1IJHAEYRUIpjiU91hpKlJgsXSkXpoJFitHLGTzwRvDXO1nJxubOKNGtbTTXR0uXQE
IR40D1uXrojIZwrm+1NLHyg67606uulWaOuFXhOHU4NpPy3mlW9IXQHiZvtqexT3RWRRCdvv
Ny/f3CJKksZfLqYWCXrgLqd6CwTL+dKhi+4fwEL51wnN+LMho27BTQIzG/rGLY1A8HBeF8vn
g6gVLO4fz2D2oF+rtVbcOVeLYEfH0jRpZ9zmU82p8v7l9gSm4ePpCZOhqQaXqQxWoTUkzjD3
i2C19kx9aHjvSkHB/x+G4Dk+ttFbKfC0WUJYwoiTDkPnnsZ9EkSRJ1LYtJ21v5YaVOt39JUT
Ff98eX16uP/PCS/HhLWtm9OcHjNbNYV0mpFxYIj6POO1CxsF6ymkvMWZ9a58J3YdybHhFCQ/
U7tKcqSyJ8rokuae9flHIWKB1zv6jbilY8AcFzpxgRw7TMP5oWM8n5mvPP/KuF5zdFJxC+UJ
XsXNnbiyL6CgHNfUxK6YAxvP5zTyXBwgfeAvjZt1WRx8x2C2MUyag0EcF0zgHN0ZWnSUTN0c
2sZgorm4F0UtRVcGB4fYnqw9zzESmgf+wiHzOVv7oUMkW9h0mFPg+yL0/NaWh1gRs9JPfODW
3MEPjt/AwISP15ge1aJhZNXzcprhJet2PM6fdT56Z7+8gnq9eb6bvXu5eYUd4P719P5y8lfv
iSjbeNFaOvANwKXxvo6OZGvvLwtQv+kH4BIOOSbp0ve1p2oU+15zcoCpTmjoe+fdURvU7c2f
30+z/5mBloZ98hXzeDuHl7S95ioxqsc4SBKtg7m6inhfqiiarwIb8Nw9AP2T/g6v4QgyN55F
ODAItRZY6GuN/lHAjIRLG1CfvcXOnweW2QuiyJxnzzbPgSkRfEptEuEZ/I28KDSZ7nnR0iQN
dOeFLqV+v9bLD0s18Y3uCpRgrdkq1N/r9MSUbVF8aQOubNOlMwIkR5diRmEL0ehArI3+Yx4f
ojct+MX38LOIsdm735F42sD2rvcPYb0xkMDwixJA5dbsLFGh7SppWGPaSiqW81Xk24Y013pR
9cyUQJD+hUX6w4U2v6O72cYOjg3wCsFWaGM8i+UbjJvpcmcRg9GWE/cY0vqYxlZFGi4NuQIj
NfBaC3Tu68973FNH9xESwMCUzGWkD0646uBXEbXtux8kEV5mx63xXjhY08aRCEU0HpSzUzhx
cUf6qhDMDKzyoitGoZxW53MTo9Bm9fT8+m1GHk7P97c3jx+unp5PN48zdlksH2K+ZSSsc/YM
BDHwdLe9ul2osRFHoK/zeRPDSVLXj0WWsDDUKx2gCytUDtAowDB/uvzgavQ0BU320SIIbLCj
8Qw0wLt5YanYPyudnCa/r3XW+vzBAorsyi7wqNKEunf+/b9ql8UYdMNQWHyHnofmjfTo/CrV
PXt6/P5rsLE+NEWhNgAA236DXqWermYl1Pp80UjTeMxBPt5UzL48PQurwTBWwnV/+KSJQLXZ
BQt9hBxqC/w7IBt9PjhMExAMzTzXJZED9dICqC1GPKGGRscyGmWF7ZuEM1bfKgnbgM2n6zNQ
AMvlQjMi8x5OzAtNnvnZIDCEjTtqGv3b1e2ehvZIMLwUjWsWuJ0cdmlhC+QZi3dSDP/3/OXm
9jR7l1YLLwj89/YM9JpG9bjBpW66jembyJ6evr/MXvHy+1+n708/Zo+nfztN331ZHkYFrh4r
jNMDrzx7vvnx7f72xfT2IllzefeDH5iCbTlXQTwyigqiOVUBmLn98uk0D6WSMemhscvIkbQb
A8C/+8uaPf24nMsoep0zzOVZ15JLkZxdHH4cyxzvfagSzwnhCQxj3/O0QVoqXJmIZwKiabFF
NxO14quSojSozjcDfLsZUXLHAIwffp5DadqQdZe24tkatj+1x4KgSMkV5n/FCM6pLcs4khY1
SY5wykwuT+3m8OPU9kEDIhnTmNi1pLQONkvLI92hn855vOeX4OF1ZfZkPPdKFWCgn3gHNthS
rVgkhi+EW5oGx0TTeJG1jpSXMgOtvw1Il5Ouvgmzoi2VW+UxOqgEVlttSZI6nDIRDcsFpNf8
bCVuZu/Eo3f81IyP3e8x0fiX+68/n2/Q2ULpwG8VUNuu6n2Xkr1jovO1mj9lhB1J0ezIxLfR
Z8LBw7WtN+nHv/3NQMekYfs2PaZtW2uLQeDrUriEuAgwFm7DWl18OS7rmMHUu+eHD/eAnCWn
P39+/Xr/+FW+Cz4XvebtOWeM00x4jysk7qzoZzp6DZoYQ46KAvXmUxozh7uaUQZUXHx1TMhv
9SXb2x0XLtUOymyaqqivQdN0oKFZS2KR+/eN/or2u01Bqqtj2sGS+B36dl9hKNljU1rXqmU6
1WmGZfDlHoz77Of93eluVv94vYcNblw6NmkSMZ+5o8ueNmmVfASbwqCkTV4d2/TzHvX+wtKh
qYYV1ZnxLE/K+DvYIxyLqiuvs22vaV8OA/0f63tGVqrfyQ4wOFMbdKEB3CeFWpLoW1yZkSzQ
64/zFkyo42fYxlTE577QB7qp451bbLq8ZZgpuXGpp4ZU3KgYbPeXH99vfs2am8fT9xd9VXNS
UMS02WByb0xPX++h8bhN08oqWlp9cruDq+wvoy8XjNKli9m3eb6/+3oyeic+Gst7+KNfRXow
RK1DZm1qZSmrSJfbwyUifpfTHP7nCmzGN/i8OiSOnNSI73WeybO2qXv++uekKNKMxNbv9c58
rNs8rRi3go4YIvmKqtzGVOAtqRIesFQ89j7fPJxmf/788gU260T/CAcMrrhMMBfZpZ4tfhTH
8u1BBskbyWgbcUvJ0l2ogIfU7lJqCWWCTW7RqbIoWsVfbkDEdXOAyomByEuSpZsiV4vQA73U
9aAhznXpiEtd0srDXtVtmmfVEdRbTir72HiLiu/kFj+Z2sL64Z/HKKwCI7xO0sHKsykvoGB5
wfvCRHhkc9q+3Tzf/fvm+WR76UfmcM1iFSvANqXdfwELHmDRB57DHxoISGtfC4gCKxNYZN8P
+WxR5kTCKcSRRBqQe5QbO6cQo8x+us01dldzh68Fni0y+wF2yz/crNCF1slG6ic8kKcLX8Ha
zp3Vt3nnxOUuPxfAFWnkLVb2T7+wKB4GXciSsLZ29nfC9sbZZQc/cDZLmP2bRmST3W8EMaSD
NefE5k7Od262VmkNCzl3CunVobWrW8CFydbJnK6uk7p2ylHHomXgHCiDvS51LwzX1wF8qTor
jeEUlTs+DED2YZhIN5LGe/dgwZ5xytcGbKCezRduFYHGyN4RQgvjfYvT97atQVQre9xWlNUU
ZLWqS+cA8Qo0sGaHw3V9AOXaaapcOJG4ebLS/boGc8K6YXKNu7m5/d/v91+/vc7+PiviZAyf
Z9z7AG4IQyRit8kdQ1wx33peMA+YwyWU05Q0iMJs6whVy0lYFy68z3aDBglAQa8Dh5veiA8d
caoRz5I6mNuNHUR3WRbMw4DYMkAhfvx4SB8+KWm4XG8zh7/rMHqQ56vtBIN2fRQ6kmsjumZl
GAQL2z6CYeCKPNsxdZLk8OJnCvwgrHXolwtVc227ULrgeW5imQ1S0TJaz/3jdZHa18aFkpId
cYTillpKmihyuOZpVA7vywsVOvGF3lstciq7v6pE1EQLRwhWidfOQO6XerpF4K2K5g2yTbL0
HfGTJSa0cR9X9jPOGyt9nOFdUuajwRY/Pb48wbn2bjiNDJ/+mJ8AZzwwGK3lCPoAhL9Efhc4
etVFwWMVvoEHFfdHine7F+9COx2anjkF/TumuTluDmMWJ9txg1+BG51UwPBvsS8r+jHy7Pi2
vqYfg8VZS7ekTDf7LaYvMWq2IKF7DCz6Y9OCqd4epmnbmo0Xwxcdb61zMNIZuUrxxtg6+W/M
5FnF1Zli6uNvzOq874/OL/QkGsMENkniYs+CYM4bGfpmPDaMxWi9r+Q0cPjziAH7hgQGVjgm
JAIdmMvZLZRaKgxRXCp51CoMxl2qgN11kjYqiKafL7ufBG/JdQmGsgr8pAj7CBkCSCkh/Kjo
PT4FKF99VRi7sYepBqSV80O/dbyGFYNVWtu1Fg4YYRPlfpAerbWEfgwDtf3hKHysi8QRxZL3
o63j41artMOg6ZRfGMdbqg/9goUDgd265L12fIzNqygJKAht7OJzP1hEKpji9V4V60zhU446
wAALauS9WWLg76iOjJaOKC7HtAPlZRY2RelSAkXEQIG1apYpm/3c84970mpN1E0R4pWKHYoV
qpiuN6lJvF4dMbxvrImQ+KJaHW8TU20dWRhKMJat1rB1WKwhilEsgNSVnZizCMPhHvf+crGw
OfFcuKXXi4JdkirorflARz6I/HtwEkzVcWvIszAsVObkWqnEj6K13hNSoLuYc4iAnts9lAQ2
X8wXvsZwmu8ajbmw3+R9Y4PxCx9NQZJ9FMluLiMssMBCzxjRtSOfMeL+YGEYWNOhAnbDhAOb
UoQD+YMpT3XoKBoTz5cfFzmMRzLQVkN/ACPZsko4XG87pvMgsiawFUgl6OoFBgf962NCG3X+
Y9Zvtd4kpC2IztWMJ79VYQU5mISi9NxSem4rrQFh1ycaJNcAabyrw0yF5VWSZ7UNlluhySc7
bW8n1sCgFn3vyrcCTYU2IPQ6KuqHK88GNPRCSv116BJPRMrBuS4w/Vt7CcMDDOg74LaMrF9R
8B080ZUqQrQVCoaKv5Kdh89AfZr5nVvUe3aoVu1V3WZ+oNdb1IUmGEW/nC/nqbY/liSlrK1D
O9TGIzCCxC6mcKcqg4XN1hRatd+1eoE2b1ie2BKVcGyZhtqIALReWkCLQK8ao9fGXb6xBtjm
Bqe4PtM3OBIFum4YgDaFy2+laqotoK4PAqNDh3Kr5STi57ld8k/uMiCFMeGSQ3RRIoMPjwEW
VrEmqIgAo5sDnPJKBtN3k6aaylNxfOQfPbMFHrqHe7NYswqMZNwsge5gMKkrcwACLd7gXFia
ZyWxDl/gO10FXlD89OzAiScNJxYDaxNdRiQ8UXM8m1hdfnWsudlIFPw7FDdD1JhWI3a4STIR
FrPHuxz4zmJottamZmXQ7WHabb0vG2BcxSwihf4sBrRByQATQdwzLPxAsaYbzRrDwII64KgF
mVDA6FUwkSxgpN0T3/PNKva0Dw4mOCY5+ewA2xSmqMoPgsIstMTAL7q6QMQu37pyZHMDK06c
j2pjFU1tv++T8LtpCgZz6czTMBJ1BAx626053zRheNd5q9niI3Qw6dQTZD4x7Lrf2tKK8N2R
4pWbXhtvqW6v3Cf2Tbqp7cE6lJ5ijFjPERRKIWSExsR+o63QlbUjF9lINTn/9mSXiOmjpbwh
oAY8Fk0q1oOjDD1UbIeWmGHI8+cVy8PKQMIPVZv92Wt8lyfmdSQAL9MPP44bwljaHniilipj
OwXbkmspnQKWfZDLjjpuuBKlP0636CmODRsuvEhP5hhhVuEIQuN4z51QLGMS+FblxRl43No+
K+RofgP/ywCp+WY4mO5tlglH7VEhqkPepMVVXulD2KSsbrTeqAR5tsHZc/UX3XPlW08By+HX
QW8LNgJKHIlqBH6fETe6JDEoeZvXCWKbtk7yq/RAdTaJTdDdaBNocRNkpAhnpY4OZCurqzan
6qczZ+gUN1N0HZ5AF1ZXDoECW6zUB5cWtsXIMX8AM/QZyNISg2M628+2re19CFG7ejC9LgU4
ZGo4GVtGoc2sQyR0j68dVUqvDqkK2MfoVxWrwGuwA+tGZ0aXp9fcaHe0mB1acfmu1JVjsni9
qpzZlSbiPpFNa3utQxy7zqsd0Vq4ghNnDhpK9u1DeBFzi0olLtJE70yRVnXnmmfkzqCbLNCj
fAZXEPCjUTh4xjgmFPHtvtwUaUOSYIoqW8+9Kfz1Lk0LfR0oCx0mvKzB6NLlt4R5bx2+IAJ/
2BaE2iMCIgFP9JXVrkVW5phmuN4ylZsl7lxtqmm5EgzgfBRhpZWK2a7MBabNM7UaMIzkIw3X
ZXBiALVa1GruUQk8teqatALmVbb3MoFmpDhUvdYkaOwiTqxA4VRngZ+fKO1orM+OSBNqx8Ry
oFmOAI2IU57Hegl8bjM21xa9M6zXARxbxzFh6hhhRzL4T0lJ91WmAXFHk+0aDIzmlGHapCl6
K17pPaQsJS4dCzhYGGCYyNcrHHFO5KKOtnTJWYZOsYTmSnS5M9DdbeGfchSLT+1CSVr2qT7o
/ZDh7npZ3tVqfaC/aZpqAsd2oCdLHQbnazY8+kgNy/Cp5bBHW/DYONy9OEWw/eP/GHuy5dZt
JX9FdZ9yH+6MVkueqTyAICUx5maClOS8sBwf5cR1bMtl+9TEfz/dABcsDToPybG6GyuBBtBr
VPoY7JHx3OrSMY7bLAhGPacYNp6nFmzAnroO5p+23+9CuC6aGVXkx4ATJS+bfU0/OeQVMCms
10oXYYe468pLMMa+J2/e6iHp7GUN0FJ0+XPaluwKe78hshV07FH3dMOPx63g5eP8NImByZvV
9KNXfmdAgNWRU+Cpopdk6E1qI8z3HB5BcVUlUWt2a86AY0As3/My6qoJYyUewEw0e25Ooklm
qJFUBooMGDuPlJKhz7ZJBIPCqXdiuaqECco7ojW00A9YiTbUxeTikjNR0a4qLa457oGpJrHH
B6WjksHakcq7kGWiCzgsUNS628E+B4DHX0kJa3qXDxhowu5+neto5zsca2HlLTvKTxawrb7j
DIQnb6Bc65f3D7TJ6JxBQ9cGWtZytT5Np/jtPcM44TpTS8MoKOFhsKNzlvcUzrJR0M7GzUBF
Q1M2tETDePgwTVUR2KrCRSjg9UeVVV0wOi/hW0GbX+pd6XvqXzunej6b7gt7Cg2iWBSz2dVp
lGYLqxBqGqWBS8ZiOZ+NfK6cnMO8H447F/nYUDW62rMQapT7jnVaJJuZ02WDotyg8/X1epTo
2Lbv6d7+yGTvrK2CAwt4Sj+5OwIh/Dse8TLoe2pd5fqdpoxdJ/zp/v3dFdhIVsCt9GvS4kR/
bMkBhhZVlfahjjM44f9nImezyks0CP92fkVn6snlZSK4iCd//PyYBMkNcuJGhJPn+88uStP9
0/tl8sd58nI+fzt/+1/o/NmoaX9+epVBAp4xw+7jy58Xs/ctnT2zLXg0n11H4+hKWoBkkoXF
BvqKWcW2zOKJHXIL10fjKqQjYxHO7XyOHQ7+ZhWNEmFYTq/9uNWKxv1Wp4XY555aWcLqkNG4
PIsssYOOvWFl6inYhTaHKeKeGYoyGGxwpWL+mTuWueG9cSHHz/fo8kjnj01DvrHnVL5QLUEM
wOPCn4leFpP7KiQT3Mlz/8gXzl0AYM0+F77TVuJ3TObwoIqGNUvgFEncLVw83X/A6n+e7J5+
nttjsouCb11XsCLnQFM9Y4Ug2vXnK+D7GC6tkZ8v4ZGxvnIj3+CHwq7RnKYWYj23V760TrL2
mLJY4rZJqYYbpNLmtldY103ApWFxydFsluoO+nMsjCBYGq6VDlMovl8sZyRGXvP2kbO5FRZ1
HSgij5KozS9O1F3A+Wvnz2xR7X5LNyQ6MvPuaJhtFcYwWTmJPMTwcCIxcaGr43QETR/BwveO
q0PCw9dh4m0vN7P5wr9YB6rVgtKK6atGOtx4xnSk4XVNwlF+XrCsKRzuaeBpXCJiGpEHMaxe
Ts9Uyit4gJuB/HU0CnTGx5/mYu3ZgQo3WzUFK92nmUajAoeTHTjVIy+Olihjh9QzLUUyX+hx
PTVUXsVXmxW9vG85q+l9cQtsFR+VJFIUvNic7EOzxbEtzRcQATMEz/eQnCARR2XJUN2YRHYq
847kLg3yxDOFpDTU2OlBVErLaqrqE7A059bR8p+jZ9JVjhMalWZxFtFrEYtxT7kTylyatPKM
8RiLfZBnX7BnIeqZc0tqP2vl2wJ1Ea432+l6QZmC6vwWb4Xd7RXPLFMkQB5eURpfWemaATS3
zggW1pW7Gg9CMmDzWRHnK9JkFZFJtMsrU+Mhwe4TouP9/G7Nr/wZkvgdysN9r6c4tMSY8smH
hwOq2awRooo1hAsACg3MccYC/jnsbIbYgfFAN3dN4gynKlnGo0MclKzKKX2Y7G5+ZCXMX+mU
9sXykF9rL6JKvZa28Qkjsfiql4YN26Nd+x0U8R0w0e9yyk7OykSxAPw7X83MXIQ6iYg5/rFY
TRdO8Ra3vPLkopDTiKm/4XPIyNQjM8D3LBdwMPlkQpXNO1AyTzwB+Ak18yasjtguiZwqTvJF
k+p7rfjr8/3x4f5pktx/UnHAsFix1zRIWZvB9MSj+GDf+NDBrDkEHlf57q66sB1pNbmrpz96
d+iru4KOhMaxiTCmgccZ3SWlDBY0KhxyI2035gS2e2ZlddoofykBdMMnOL89vv51foNBD0I4
W/jWiXzqkHaVlM2Vo+hOdOIlKE5svqZtfORb7DBaPaIXI/IobNt/bwxCPlo7S8PVanE1RgKn
43y+9jch8Z68HnL68hvaJEmylN186t/LyjHPEUnp65r8yAb7jQNpPyjiyub9TYpetB7hivpz
61/Jto7InFfbLsocdUWrpOV0NRn3yzrV0h/p1bbOOF52vFtrbMztxqpYCf+M9FDdMPxrEt2Y
VF0jlbQSOD8jD3nTf7mRehhPm3SE4SjF/AjeUQsZ2DDY0V67Cn2MAp9hXnVXRCNsA/06VUDD
MV2HVHV4CeqkiJuAtPuqj7pU6ijFsyYAxbkmJJ4tN3py+FSPqQw/mgD9bghQ50+46TAya2Zt
WfQjuX12K2WVTMGpsnD+A60J1uOTeSJOhMbIelBT2OAS7vd7OcxPl5rxgq4lqbapPS6F2uK/
nnQ4SHUMBCU9lxMTb1Mo7dRLulsihgdrI51FKm3WoQrnqx1qDJBtwmqx53ZbNXQ+voKFSd3Y
ZZO3ezN1rux4LvZxINOQe8edepw7h5k7RRlphpNGqYBXmCHg7GAe3Vt6fr68fYqPx4cfVNyh
vnSdyZcuvCzqlLomp6Io837JD+WFgo2261/Fdi/kd0+NLCEt5jcp3M2axeZEYEs49gcwaoBN
MxqpJ5VxIgxf7x7a+C2jJFFQ4gMhw2fX/oi36mxnRnpQaZyikJpjWQMjw7xJFOZhMt0FBzB9
0+jwV8sRfMHZ9WgFdqQGo/Jicb1cun0C8IoyCG2xq9Xp1Gn1nx2cHld5AC4I4NWcaHqzIp3D
2q8YHTCxb5w4BeU8eMJW9ARXixGCkPHZfCmmnnRsqpKjJ8SKXD4h3Am906ZsMoRYKiWRWbTi
7GrliYKhCBK+up55Ilr1C2n198hqldq2P54eX378Mvu3vEmWu2DSxjL5+YKRYgnDmMkvg1WS
llBVDRgfqKkzmDQ58SKhLxgdQRnRJ7zEYwRLPzaL+XoTjMxEFcNk1O0CJSekenv8/t3gTbqJ
hc1ROssLK7aAgcuBayhlnNWXFh/Ggj4ODKq0oo5Kg2QfwQ0jMBQOBn4wSPR1hRf028QgYnCj
PsSe0GEG5Rh/6UffmtxIfiG/wuPrB+YreJ98qE8xrMHs/PHn49MHRiuWIX8nv+AX+7h/+37+
sBdg/2VKlmFqd9+kwHU1Kpl3RgpmWUzTZPDqs6Jo+6pDrwzqZDenuHW36itBRZEQcRAnvomP
4f8ZXDxIF5IIGFjDqhyNlwQva82USqIc2yyEWjQqqiVGTTQDV0ik7/7ZItGlrknNCFoStduT
/qOqvzLKul1CQlW4ZBgzxhGOyZuSJI7Wq7l2W5CweDO/VhnpDaiZmqaFWfxYQaPFbE5KcSX6
tNjY1ayWbtVr0++vJST6sJoRhRcOTLSRWS3ozcnt/2ya0SeVRBdZSJ1TZcWlI9mnDkj5bHm1
mW1cTHfT0kB7DlfjOxrYhZj519vHw/RfQ4+QBNBVvqf3IOJ9Sw9x2QEuiJ0NIAAmj11sWY2/
IyGcwNt+adtwDNZCgDt7TgLe1HEkI5f4e10e6McfWnViT4lrZFeOBcHq98hjsjsQRfnvdDyv
geS0mVLS7Y4gFLPF1Eh5aGIaDny1Linhsk64XvqqWC+bY0hpDzWiKz3/WAdP2enKyL3VIUqx
4guqRCwS2LYbH2JOFDkBfOWCC77dqEurMyaJmnp0MgbRwiSiSPSMjwZiQyDS5azaEPOh4DjL
9lpFbBCupysy6khPcbuY31BDFfA2uZ5Snj4dxTZdzMxXTf+RYN2RWcA1gpWeQUsvOCc+SZQu
pnNyoZYHwNABUAeSzcYToLAfbAirfePsVZRGfLFXcf49iaoNElrTY2w3+iFnkNDPE53Ek1bb
IKHfGjrJNS3TMXanJzBwP+vXa0+k0+FjL1ebr0iuZp5s6gZDWI6vAMVNxucXdt585gkW29fD
i/U1lftHng1zjMHQOdz36wdTAbs835nzxXxBcCgFb/bH1AyaZ3Z6PbbTcH9cc6JuhenrNk3T
RnvL09w6Rtt1M9dTIGrw1YzY6whfkVwWD4XNqtmyNCYdXjW69ZKctflyunThorqZrSu2odpM
l5tqQ8Ve0QkWBGtC+OqagIv0ak71LrhdbqbU9yhWfErME36mPt3W5eU/+Ib7giltK/jL4sC9
a7mQOarpLxymbHCs6KsdoB4RJBC4IesxKF2U7YyQ9QhrAxFLGVsWJcLESim01jZa7ZYMZnMX
emyqW4cXQHsCprUEOat8VdzyHNMKYPvpLqW1OAMNsUjCI3aeW0EcW+jwSTsyw6RzL2qEdlsQ
G+BPj+eXD20umbjLeFOdWsJhvqy0Tf2UNyWTHkpdlUG9dT1iZKWov9YCSxwl1FCLt8UpnaRV
c9/d+tRZkxhRFJbL9Ya6FtwIWKza1U39lrHqfp3+vVhvLITl3cK3bIe8Z6mpgAYYTEUV/TrX
ou/EKc4oj2M0viE/dmswp5I5kBSYV0s6gSZN7nG/00moF6yGl8Jpfa6chruPYRh2xnnD460J
KJAB7KIsLm8NfSegQsxjpVB01Q3Tox8iQEQlz8XCaoLHWpgco4ksqjyqfyxX1p6on4hNt8Av
vdj9gYrx3BIctkAR52laSy2kxkQlBjjO7TY0gXrHJVGWywp8tRemJqiDYXjYkSJNmjItPlEP
BpZ0osA7w9lFwlM6exsMqQnuCtRspCxjO9M7FHlsF7mS6p5MTKN1QCWqSaOsdoAGrxpgrbjI
QQUYici8rLQYGdSH/L5d81aaqdax7+Ht8n7582Oy/3w9v/3nMPn+8/z+QQRI6WLLG7/tSLEd
VPCC6RlwWnhdxYlw6ujGpPlmftUt2ffT+cUbXhpjwhBzhWDMYNWi4owWlWulUUWWl3fNPq+K
hBSUyDpRKNjgmIUbwRUJZOK+Q8X3mlpHtcJvMIeUTrwVJg2aLbCqxRi1ouhHTaI0PDdw8B/a
O3WBcexZ2GVeiatElyyTMYcbGfrqKzq8Wdh0/ZEX51USILXZwSrVo9UhBNY9ttjNybPZVHHA
CC1iPIeCTtjW46VDNyuKSK8K9jhPQ7ObeIeSQq1ICNOgErEpjzAOhafCPcY3Kw7ACc3JUAlc
9EbqKm9OCZ6tn3bj9iJIrWUhGzkUso1+SxG7pf9EFdupnDvDAVnGIp2jVQh99uYY98bzmEs2
s+s5xekBZcRHVb8bXt4VMFjO08KHq25iL+4YmShs3ZCUI2w9XwQUqy4369m8Nqg3s80movU4
ZSVW8yn9GD5UV1crWoAgUd48PyJdr9ynhHg93//4+YqaGhmF/f31fH74S3+NiCJiN7VlTTS4
4VOltcLqkzdO+CKVWvLl29vl8ZveGpNpOskxwKu8zDFCDh3wy8hUigm7UCItM34yIywkojgw
EoSTg+p6pemGqqiBh8t6viQzonRhzFqHqX6RbI9VdScDlFd5hV4UcBfVk8MOeAxg3qL1KOY7
4ELFjmF2L/pGlcUwSFF44k1hcpwtXfIYJ5jyfSpNnr6gKDwWMrnHnvlGrKceac+ujO58BsFF
vFwsnCWyu3//cf4w8pxaS2vHxE1UqQQEGN6O/KZWNZoypcy3ovGYJm7jKAmlNa/nCLspuB16
sMsYnk04Bp133uYIbdhB811FYiXoP6TBrAlmhsEXhT0svaWr0dJ8SaB2MUyh7kzSAmRXh4Y6
aMB0d4QOms50GbwGNUIUd3CfMmh/B53SL27Yx7YbQ+ALZ3L7Q2lz1Xuja6ElOv6BQfGPqfEA
ULDWKYjoEOL3oRFIgSVxlMl8fEcycg1GtGsSVlR61PiQhzBvejXw+E2AJwdxTubYRCzU3zDz
jdPDfQls2mrzzcYTEVMSlEFFPWVbnGZLua1/iytRO+Pp4BX6aWpLB2V9eVNub+LEMPDZFcjf
uNyodHS4QnlZ6oUANvJpEGt+zGTX9pOgTuEOZg8CXudMhlpzMPIqnDhgGS2JAsKWVrdnbV+G
cL6wcCAfGFddYjzLhWf9oKHODZY0LTkNMIbV13M99nWbVHKbQVtojhB73BuIEv+ArrVCRGuI
r4bQyCycw8SYSHjv3ER3sDYSzdNYRQYSGBW3MDaNkgHCAzfJqdinURQV7seUG/KoBz+WkCww
gaqwzR9k2TH+AGMwqsHNGaT51u02Yqp9nYWYPiShz85TzPI09qwMXMNW/+BudutbR3kBR2Tp
TEdn+RpUxD7tkOiXTi+DlsDD+3A64H7N3dHD/+GknDcHb94pRSfDPh58Cf0UzYFmX21D1JIp
Uu6PLYBp9+DyTj0qVQw1Zw7TU2p+ddVKzm6qUpk2WhXc6kbP0k+v2VkhZlUVpedS1doeYpwy
gGQRHyPD0cYF/ZpuuQ8+LBdNUFeVJxJhWxNcMStvXWlyGg90oyqpaljw8p5L6+VQ5SbdHYAe
lmxWxczjO6HqkxZSopg72bi7k6Fmx8jZRMOe4Uq4Lm19DW2iFpoLXjbnbxNxfjo/fEwqeNS8
XJ4u3z8HyxR/0C7pm4fiH0yoJb1F3PDFRgyvf95Wf3Klyk5MZ/18X+aYobz9HvT2TeGEZ1lO
f7auouQGxSNJnsOzT5Ot4WsfcBinHF4cmrxAmWki7tc+O9vz8+Vlwp8uDz9Uhsf/u7z90Kdq
KIML43rpMdnVyES8WqxoPbNJtaTFzxoRD3m09uRD1MkEXu4bTnvSaISOTXGf2oycBm2lHjGB
O2mXrwqJy8+3hzPxikhuokOFRnKrhXbnwJ+NNP3/1CiDJOwph75R9ff8DZhYkGuy7YIbyqRO
nRfk1INYifDj/MD0BznCjAeFAg2XGPXeO7+c3x4fJkqKX9x/P0srUy2wyvCm+4JUf/JjS+o2
RO+LjqKNK8eEqGA71TsqKDZLQ0WvPS06UHPQVMIhcGt1Q9YG3Wox01Zq5oIbcRhjpmZPSY2U
TrhN8qK4a476pyhvmzIyNBqthLzrlrLDOz9fPs6vb5cHUkcdYfBIlE6SK58orCp9fX7/TtZX
pKLVzu6k03TpYe6KUOka6KaNJrSDD3Px4VXOlYHBIH4Rn+8f5+dJDtv1r8fXf6Mo6+HxT1he
gxOMklk9A28GsLiYuvtOeESgVbl3xeU9xVysyoH7drn/9nB59pUj8Sry16n47+3b+fz+cA97
4vbyFt/6KvmKVJl7/1d68lXg4NRBeiqWf//tlOlWIWBPp+Y23dHCqxafFZ6T061c1n778/4J
5sM7YSReXyTcivShVECPT48v3qGc4H2VnZoDr8muUoV7Aeo/WnrDsY9SjW0Z3fY2AernZHcB
wpeLYQSiUM0uP7RRl4BbhLDvTZWHTgZMAO8EGOfBIzvQaDEGBqZR+ZISfUFE4cvgYNQJfDc+
uBu0GyXhVTlMiftq6B52J7wydzMW/f3xAGdyG3yPqFGRN1vB4FZCy1BaEu9LpsX3D5/F8pq+
bLSEGJ5x4RHqtyRFla1mq9HulNXmer2gTWNaEpGuVh4DupaiC9zguT2ijpLerqQLSVYZOU3g
Jx6VZAWIi0P6VSNxOJlerHJJrjyey0gB96xdkXsUsUhQ5bm/ftwZ/pLou+LNDXOASznt7AzX
Ru2GdUxdpw0EJoUQXjfVgWDsGYZU0nnOvGUrLl3eTh6A7RjvmY7J2jjtexeYMtYnyy8jKT/O
uzRDTqvF/g7uaX+8S8438KzWNqQNMtJXF/C0uckzJsO1IJIe5f4Oo1Y0802WyugsX1NhfSTP
NvunlUaux23FUbc9eOAOFF5wl7fn+xdgNvAWePy4vFEzPUbW6xCZsTbgZ8M9C94jZrKUbt3l
VenVjPt9q2oLYqzGff/bmrK2WBIH2SGM9bBeXWjRwtDCY66h5Mb4bSVGlokzNcFyoAfwxTx6
W01PoBqVsE8LFrKTA5MJVgbzO3ZqbWwMmPYDuh8yzROpBVhj6qA3JBRpOxmx1m/l96L/7JmA
svQ8Tj7e7h8wuiYhbxDVqNhlT340osqhJKobKU6VNvCMMMwJpepRRSL0cQER554kUUmc+gpJ
gQkfEXFxTAvhySVunepyrraPqJiWG1m/HXHG91FzxDQUymvPsHViSRyyKoJbABoRCjKtH+Dg
wWQql+EUnfu0iYBb0MGDALM0clBLAOZrA5Yu67RQ2K1cxCfoeuKiRMTrMq7urI4tvWq334Jw
rhPjby8xNJAGcvYMbhTFMEt+VepvDqq7PEuEZvkCv2/rvNIerCd6uAjWnSHxd54laDZrOU9q
GJRd6ek5EKVizhkguIhGJeqqKj0C6m4r5kZnW4AUuaAuOky07Yypw03yDtLkcz36bg/ub8r/
X9mTNbeN5PxXXH7arcrM+I79VfmBIpsSR7zMw5L9wtI4iqNKbKd81Cb76z8AzSb7QNPehxlH
APpgH2g0Ggfmoq+NQM8DTd0ETW03IgNTZUG9xNyR2rToaHb4Z01lTYCCGEM+HsUKC/NPOeMb
Ma98zq4DcdWC7BnkQEfedPwSkdT+FyiJlzPzTnMixiTtScx3K09SOZjc6j6yhoMAOOjGBu3J
unXQNJULZodOIdX25E0Ojoax9RklHBHjQanTc6WSDZF+aMr1FgdbP+fkb+D1kQFjGQ1Ku5Z/
cQ/rQ+sUJTu6SSrUZhmrwyspxhS88eChUpGTFZZh4xPXedHAHGsntQ1IJIA2llYwsOkUpD8K
UNzPEriLFrk25xZXop9oKU3qqkHPr0n0GCqqJ1sFVW6ZvkmEj8tKbFMJg8texVnTXXPBNSTm
yOpe2KQuxHmqRhvAuDZPIAkz1zwdSNrWCI3AlJjhPA1uJMXIgAYopq1KKnwTiRLuOOUog3QV
gJQRwyWiWBl8bSRGEZUXMzSiNawE+qb3CDMBY1SUxuaUItfm7pvuFxPX8gx8sAADgx63Y49Y
JHVTzCtP3C1F5ed/iqKY4Z7u7MwkalKQhqIZ6tMwQica0Ig8fVVvB3Is5LhEf1RF9ld0HZGk
5QhaICBenJ0dGAvn7yJNhLYAb4FIX2ltFKtlpFrkW5HaoaL+Cw7qv/KG70Eseff4eFtDCQNy
bZPgb6Vix6AIZGV+cvyZwycFeoCgAdX+5uVut9P84nWytol5g868YaQmJc/ynyZvli/bty9P
e1+5T0a9vLF3CbA0/ZoIdp31wPGKO4J7GyqMaMjZ1BAl3AIMLkNAHC/MVJM0urk4ocJFkkaV
bqQtS2C2J8wohNun1Xq+FJVhj255/zdZ6fzkjiyJsI7rRTsH9j3TK+hBnelXAPeyGK6olTDs
pIcMSGjWljdJaJWSfywuChvsOqi6/vBU1393Loemk1p6d0lzVoOzFBXGt/IL3UE0gYv9OEGH
rQ+78BcElMwF5pHwJvo6m+jO1LXCleTGO+os8d06QmBtxlFGv6XsYgWM6FF8YJ/6qg3qhV6T
gkhZxrknmWh5zE3US0FZsrLD1JspX1FP4Y8XyVKiiBOyoc4GcmuzDPBbGUbErT+9PZmqL70t
mNrWt2xdt3XjycetKE5IsTSjN/9bT3ZoRSuymcDI8FPdi6tgnom86fpjHJOwH2sqgbVvLWVJ
DtzGEnuyiU1S+nFX+fpkEnvmx1ZMo4rFYuhUnfXTbzyb0PODBMLKUoH0JDBpA5rXpyq6k4/S
LcIPUZ6fHH2IDlcKS2iSad84PQiuY5VVw0Cw/2X79cfmdbvvEFrZUXo4vlwzQxw7NzkTD/zH
MB+9qa+9HM+3AOCagrbx1kGikOqIGmUSgFxz8YUIcWwWvT42j1qCGbFkEFKv2IRvkrg7tIt3
2lWmzBW/BCG9aDUFKmGs8K6SOhVrtoRqr6MXUdzvlE25w5TYRRYk+eX+9+3z4/bHn0/P9/vW
iGC5LJnLBMz+j1EXfGh8JrSBoWR0uTvSeK/qw3ZFOTt7PRHKQiJFInO4LAUWgCLjiyOYTGeO
InsiI24mo46cDfT+RnLE5cjyIi0SodvbezRqmlw6swfukFr1vKvsmFdk9CiqpNDUG3TcWz87
3bsCRxeGxI28hgg7K2bd5lUZ2r+7uZ5upIehO2AfOUFbH2UI34n03bKanRr3N6N0lNRoVYTm
kjgumLMrRI9pbu2oIv0SGWsU5cIjGyXmWYa/5a2W4wiERafM1dgd26mYaFYiQEs5FJgXFqot
0ZPSAlriB8FIsDe+IpET5OuY+9kDlH8GH/F066G3Im/letfNGvq7uucBIwr8UrmHgV+Uxi2C
fvJqRonilIxq6erBOuDHeJ69vX4939cx6u7bwd3XLDNgPh9/1niNgfl86sGcnx54MUdejL82
Xw/Oz7ztnB16Md4e6JG+LMyJF+Pt9dmZF3PhwVwc+8pceEf04tj3PRcnvnbOP1vfk9TF+fnp
RXfuKXB45G0fUNZQU8wOczWp+g/5Zo948DEP9vT9lAef8eDPPPiCBx96unLo6cuh1ZllkZx3
FQNrTRhGnQExX0/8o8ChgFtdyMHzRrRVwWCqAgQZtq6bKklTrrZ5IHh4JfQ0nQqchJilKGIQ
eZs0nm9ju9S01TKpFyYCdWraU3uaGT9c5t/mSWhlYx1UMMYzsTQL3d69Pe9ef7sRd0wDAvw1
6tSHxghciasW0xo5p4ESVmUGa7x2An0Ft3yt4pnTVIPZ4kVkQfvHkRGu96GLFl0BzZDM6nmn
V8JVlImajHeaKuHVEuPLsl12Bf8noWRRFMvaJYgZmLqWaKI+sgxZD+yVNDBffOxy3TrWc0EP
aJgJTcTorSHWmvSW1hnFdMG7exdEUXV5dnp6fKrQ5OqwCKpI5DCoLUXPKW9k6IlAqjTH27xN
xuvuQXjE96W6aCvPqx1KWJRRSlSYMngh0pI1Oxi+soatmLdr5vt7TIeO42WA90c/TS9LTlGI
a5EW5QRFcB3a79IODb1pwnYoK7gEXQdpKy4PmSVYw2bnw2wPJE2RFTecteFAEZTw1ZmuenZQ
lhjK4zVVgNuNgdL/oDLeWoogKhPe0Wogugk8cc3GwQliNKxLOD3W8BJvLvy5LJjM8wDzqnHI
oL7JMEMlLD6Tr4wkGt+pjKdZrZY2SnT3Vz3CWYIR2URQ492gDCu4bK8vDw90LG7Iqk3NgHWI
aESGpo0c70R0Ph8o7JJ1Mn+vtHqbGarY3z1s/ni83+eIaEHUi+DQbsgmODrlAhDalJf7L982
h/tmVchEBTrDJqHHzBaIKhFEDI1GAUuzCpLaGRJ6sHindlW2m7VJ+sF2OEZDk+csG6OpWUqR
7uvh7PN2CvdPtz49uGA6IvRYCvCjw3sjXIHa1rRpJFQUyXul56EBSKaaUvPHsOChDodG8Qm2
RYc6CrjYJrA9Lvd/bx42n348bb783D1+etl83QLB7ssn9BK8Rznl08v2x+7x7denl4fN3fdP
r08PT7+fPm1+/tw8Pzw970uhZknKrb1vm+cv20e0ARyFGy0dzN7ucfe62/zY/XeDWO01F91B
gdWHyy4vcmOBzcOww9BVcKKC/NCGTYoXfm8iCJ58dlMJ3tB6gh4P5vfL4FqDIh6jwwR9qeQJ
73GucogxlbyXVgUY44dTof2zMTiI2EKomok1nDykh9OUSzK+pBmyXsIykYXljQ1d61mkJai8
siEYgvIMmE5YaGHZZEykS+Xu+fz75+vT3t3T83bv6Xnv2/bHT0paaBDD4M4N/z8DfOTCgc2x
QJd0li7DpFzoNj42xi1k6aFGoEta6UfeCGMJ3ecD1XVvTwJf75dlyVDjVcMFq/CBHrhbgGyi
HnjqQcNI1npO0Xl8eHSetamDyNuUB7rNl/TX6QD9iRxw0DYLuOY4cDNwag+sk8ytYQ4SZyeF
aowT4+D7GLd9gN7y7Z8fu7s/vm9/793R4r5/3vz89ttZ01UdmG/FBI34DFWqpfA9fBXVTLCs
t9dv28fX3d3mdftlTzxSv4Al7P1n9/ptL3h5ebrbESravG6cjoZh5g5JmDGdDxdwVw2ODuDk
v/HGKh+24zzBeNEfofEEYNWIjjzBy6yK4B91nnR1LTwqXKvd/4UeuvBBcjjR2/rshPfIsmg+
VtmhLx+pTfTx6uBmtmaV9v1GEVeUttdef4sAzrhrtRdm5Cn+8PRFN39Ti2UWckso5hIqK2Tj
MqmQYTIinDmwtDJSP/fQYqq5Ertor/y1aaGn2K24WVUe3x7FyxZqW7w7CRqpPQvO0ouSIG/a
zNnzi83LN9/IGyGp1fGV6fmA1MdyI3Ati0sDut399uXVbaEKj4/c6iRYalUY9h3q+mYdCjOR
4pnhzt96vbCS+jnFm8ODKIm5vkjMWLnF4hZWRGa1Kj7A3Ibpw7BiZ5xpi9pu0Yl7kEan7lGc
wM7C+EWJOx9VFsGGZcH6I8YIBk7FgY+PXOr+0uoCYQ3X4pijRz7oRZ4eHk2W5NqCMszMA4IP
CaPw2TQa7aNnbBBUJR/Mq8MLd0GuStkfZrF0tJC6PBlWuBRxKWGzuw0DwXESgFpu5C5eripG
wq31xi1k3s6S2gFjlFK427urkAXCrWEVG7p0C+EkhrTxfdedbR5geJkk8CLeK9gfvcAuP055
5CdFvTv/JYg75aHTrdeNu+sIOlUssmyxB+hxJyLxLnuJeUl5uQhuA1fOrTE03NEB06AS7KZ2
lKJ5t1O1EEzboiqNFH4mnI5M3yApmolx1Ei0alyeMdHtRrirs1kV7Hbo4b41pNCezpro7ngV
3HhpjG9WAZR+Pm9fXgzly7BwYjNes+ICZF9pD8e5J/XsUMgTLWlAe3K69QS2naaM8rJ5/PL0
sJe/PfyzfZZxeiw90sDP6qQLS7xfO5umms2tUPY6ppd0nE1FOF+KYJ0IxFD/MkEKp92/E0wK
KdCnvbxhr9Mdp99QCF7hMGDrUQlg93egqTwqUpsOtSTT52bQ8FbRUorEYzDJ48Lp7WLlzgY6
dweRaYPn4uignMKDKMAyyesuaIDnw3Vgch2OhCiDHJzwLykacegL6zWSXKH7xuL84vTX+20j
bXi89qT3tQnPjj5Epxq/9mQmYZr/ICl04H3KPIGlvu7CPMd00e8O6EKkNRsFRCPqU1boKkbt
7YnSfowrTEOW7Sztaep21pONVlMjYVNmOhXTG9Ttd6HA99gkRMNf6eBtGOYuw/qcgvIjnuKT
+pzAkfQz8Km6xpdrvqrPpKbCevjnvWSO78elkDau5LiKPUuY1Mfh9vkVQwNtXrcvlA36ZXf/
uHl9e97u3X3b3n3fPd7riYEoALr38c7F15f72otUjxfrpgr0EfM9UhZ5FFTOYyFPLat+5wVI
OX994KPVN82SHPtAvpex0k+nu3+eN8+/956f3l53j0ZSUVJu60pvBelmIg/hlCHrhHE6A/JN
ZRbCDDaLwEQt2gJW4UzgnpKH5Q2mlMgsX1SdJBW5B5uLpk9q4qDiJI8wBD2M4Ux/gA2LKtLv
mTAimejyNpthemztc3GdGU7uKgYLZrIpjDBxCmWB6VkR7ZPDrFyHC2lHW4nYokBPqRiFcnJA
KdPE1FaHwJKTxtCbh4dnJoWrBoDONG1niJyogTAOUVQ+YDYWO5GrSQD8RcxuzpmiEuOTk4gk
qFa+jSEpYG58WE++M8B4EVyqQLgEuhqbUFMpSDWL/n1VkEdFNj066O2DwoApchLUEUR1ZxET
Kl2PbPgJCzccOsbuE1ijH7/rFsFjefmblPw2jML3lC5tEug38R4Y6LZFI6xZwB5yEJiEwa13
Fv6tj3cP9Yz0+G3d/DbR9peGmAHiiMWkt0ZOuRFBDlYcfeGBn7gbXrd8UmuHgtwWaWHcjXQo
2qWd8wWwQQ3VwBFTC2QSHKxb6glbNPgsY8Fxrccf6l3o+5/kpn8dpJ0JXgdVFdxIxqTLH3UR
JsAgr0VHBCMKeRlwQT16jwRRvjkztibAjXx/OQ2ETPMHLH+u26oRjhIYBiWJ6ba7KaVAiqKq
a+C2aDD8iAxMwjQgD6QF3VS0s16mRzLJQy1f4fbr5u3HK2Zyed3dvz29vew9yLfrzfN2Ayfu
f7f/p13fyL7mVnTZ7AZW8+XRwYGDqlHTKdE6S9XR6IOIHjhzD+c0qvKYT5lEARePNqS0USBl
obvP5blmfUE2LEzUezVo81QufW0BUVRV+Y6oMVoK2MFYWYVli1FZMLkgWSAYmK4yFkp0pZ/C
aWE4WeLvKTadp5a7RHqLdpSGZUrECbAYDdaMvp+ViZEonvmsKMkMEowVVuH7WVNpm6QN6yMU
bAyhk2wrFV+5jmqNCynoXDSY762II33LxQVqkNyUBwhnY40g/fmvc6uG81+6UFFjSLcitTYZ
blkK2GXc5wdU20cJidO2XigPXx9RFqLVnkVAa2EVpNp6qGEzW8Gk5NCxsz7Ixo5oa1r5qBsB
QX8+7x5fv1Mq4y8P25d717CZxOYlZdszpF4JRk8X9hIUSodHzEeWorHoYAPx2Utx1WIEiCEV
krpAOTUMFGhipjoiE4eOq/EmD7JE93HqB8f7wYOObfdj+8fr7qG/SLwQ6Z2EP7vDI/2CTM3I
CMOwJW0oDKMzDVuDxMvLgBpRtAqqmBf7NKpZ47GRimYY+iop2Q0hcjLpyFrUiyPD0nYGJk+i
IDXAyk+GPK24AEs4BjOV/G2UHEUQUW2AZLvS5nAhiLDcrEj5DDcyJpVe6wJqhduJTAOQck5d
RQlrE7l9guG8DMYiK6ylByCGTciCJjRNfA0MfS6GBdOt2cmyrY/+lpg5HfsOF3Bk9b5souos
F3o98vvH1tawAYJ5QsE0qiuNE4/AwdBMzuLlwa9DjqpPQWYNivQbtaEYWUId/72dWrT95+3+
XrIM7c4LGxPEK5HXicckTlaIhP40jlRNsco99oCELouk9qfLHFvpLCtBg6AqYPICaRrkzJ8M
nuPxg0jbmSLz2GojhU97SidbP+BweKCxodu+wkx8oFyEbe0TiyTVNZe6YTh9ehqZo9vtRY/w
DmGfjBQtHbXVKIEUKQvu7p2oqqLqnW4vH5xpkrsDBVnvYEnpPqgDzccjDOkDCDqkJ9ZdWhDB
VCgLSCHr0DHAHBe2M1RLNGy0m4e6ACxjrHWl2QFAeAeuXiTVGJwbG91Ln+6+v/2U23+xebzX
zhPUk7QlFG1gCA13hSJuXOTQhcHcWicsgzzhbIf9xL0bxsE4J1VktUqBj3XhbaCQIi9KCjDm
WcnSuB82dkYjo858hMb1G5EtdAvMsdOAoM1umNUV8Hrg+FHB6xd98zRIRdQ2HB1FUerxI3Tw
0DUDSWJs24xDXMOwRba/vgSaYgXBnFBiklIyCIFBc3ESJpgEtr8UorQ4qlSKolXXsC/2/vXy
c/eIll4vn/Ye3l63v7bwj+3r3Z9//vlvc8XKuin3IiOOl1VxPcTwY7smn3vg0yY6jpfoFu70
nqRl/WZjcqdYJO9XslpJIuDtxQodx6Z6taqFJ7GOJJAvXZ4MxZKEkhfBcZ3CtLiMWQUSpRfB
Xu7n2Cc1BDsLr2WWEez4QX35Sy2O2v8y6YZQRJxQ7y9JT/CpmApOiAiWpdQmTozOUh6+3qGB
/64xaLWuQu+HJeHO8tIOgWevjykxQh1jU9MZgkQvMB2VKcHKN+6wNcSlviA/J0BMnJQB+wvg
6Uly8MBGzg40CRzLekOAIlZcscH+VJoUo//OrrjqJd2KkXHNSaOlCOIhvu95dNzwIX1ec6nT
UpHhOT0GJ10kuoqxzN4XQXLR0AMmR8epCtpc3g3sRscLkhlgxNA/BElapwGfwBqRUmL1cQWi
yIKlUL7Cdt0U61UuAH8TMe54tnaj3+ytq68gd0KnmBRZFqoucgwJpjUPbxrdT5TsEUbuwQRR
KUq5hvWYfCgYDhMyjZ1XQbngaZROIFaMy4/sVkmzQPVVbbcj0RlFHCcPmCqySDD6Ie1QpITb
S944laDByI0FDPvaZNWa0ps+RaaMNvstuxKaub1IPTRr41j/fEqDQvTG9Ri3HO5SmSnDGTSt
qj6aCwZsMts36lPKOruintCdbHsmvHPsm15NxBAiKxvUXNLHegLJV1cg8MZ9eU67S8KUW/1i
BYvZX6xfFf3M187k1TnceIDd6VVaqOFy5AmKNYOjFD01q4IsAmxPOwUPcmBwAT61ywIeOWcg
h3XKEerHvDMZKn+DCjg9YpZQ70z0M2BckHQEysfQS0+Es9aqQzVaxg5M7Vkbztfg2/7v7/xh
9fXDZl68oGP952HM4CqJuK/y8I2RnfYrqAng6C+d58CBLssS78ipbWY+NaElRVMl8zm+8dvr
j9jTaNbAVKozgdH8QTtXdYJ3u69tU1LY+inleAh8l8N3Lxx2ztQGbhYw4F2xCJPD44sTer4x
VRQVDDiaOWBLNDrSfnC8eiwjT8oMstAhS5Tal8iHSLxYuSxqPcw9Szcbj0OQz/10Fb1cTuD1
51QvlfHeOTFVFAzU9zAtryxnJ+ONwrS9GpxE/ROMQ7cQazuQsDW28r1DPq550g/3dHXoCbQh
La2AomFTUxK6Nw56MID988uDVRWAQYJMeXNKokA/cz9Wviz78chGYiubtUlRodUGhUSZGFqf
xSthk4jL6SJX/DJzPvk688mq8ntRqsNAJ/YAlrE7emjftcCHHzhDeNESzZdgkCf5EtUVJ1UG
l05hNdvHn7Zbbonl+OrqY62QxZtZ3TIrIqcy9J4GkWBy6ZJhmOeBB8r7+QFpmztSWcNBUbWl
VwyvA4xZ+Y42dR4Zj774e0pR3M5IbYpMC59VrFh2hOXObSo1vqm7z58w3/iAmvSxAYUmOMvo
Qj2F3lpSmDjPsSdQtIvTYF67QqYIqvRGPRO2tW6nc37W9doF0jDqqY31Up66otncTPRjNdSt
oxn/7oENl42X84k46cp548RYty/kHDeLihbYghOiptf9pTN6oObPhTEjrm85DdKHO8r4SWgy
hLnBtDNhnEZ53h+szw+s+VUIwbPMgcLdvi4NisV+XRI9F6MW2TQ/KZmUG9bA0YVtSnOUJVOW
GHJw6JpdGsKHzKWOh6l34Nt8JTOuFZXx5jDA5UMtSXKed7SBdN46gZPtqBPSOuD/AZayxaEm
ugIA

--3ozaiyoec5o2yr3c
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--3ozaiyoec5o2yr3c--
