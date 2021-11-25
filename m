Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E274345D9EA
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 13:20:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D0AC82662;
	Thu, 25 Nov 2021 12:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YeoeuPCBB9Vy; Thu, 25 Nov 2021 12:20:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E8D481CE3;
	Thu, 25 Nov 2021 12:20:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 888601BF3CC
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 12:20:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A764402A1
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 12:20:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pp85wR-aFiIv for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 12:20:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07E36400DE
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 12:20:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="216213873"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="216213873"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 04:18:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="538968990"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 25 Nov 2021 04:18:35 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mqDhy-0006KO-Rd; Thu, 25 Nov 2021 12:18:34 +0000
Date: Thu, 25 Nov 2021 20:18:11 +0800
From: kernel test robot <lkp@intel.com>
To: Todd Kjos <tkjos@google.com>, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com
Subject: Re: [PATCH 1/3] binder: avoid potential data leakage when copying txn
Message-ID: <202111252042.kCPmeLlY-lkp@intel.com>
References: <20211123191737.1296541-2-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211123191737.1296541-2-tkjos@google.com>
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
Cc: joel@joelfernandes.org, kernel-team@android.com, kbuild-all@lists.01.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Todd,

I love your patch! Perhaps something to improve:

[auto build test WARNING on staging/staging-testing]
[also build test WARNING on v5.16-rc2 next-20211125]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Todd-Kjos/binder-Prevent-u=
ntranslated-sender-data-from-being-copied-to-target/20211124-031908
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git =
1189d2fb15a4b09b2e8dd01d60a0817d985d933d
config: ia64-randconfig-s032-20211123 (https://download.01.org/0day-ci/arch=
ive/20211125/202111252042.kCPmeLlY-lkp@intel.com/config)
compiler: ia64-linux-gcc (GCC) 11.2.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # apt-get install sparse
        # sparse version: v0.6.4-dirty
        # https://github.com/0day-ci/linux/commit/d51c5e7a3791e9e748200416f=
85456c826d3030e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Todd-Kjos/binder-Prevent-untransla=
ted-sender-data-from-being-copied-to-target/20211124-031908
        git checkout d51c5e7a3791e9e748200416f85456c826d3030e
        # save the config file to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dgcc-11.2.0 make.cross=
 C=3D1 CF=3D'-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=3Dbuild_dir ARCH=3Di=
a64 SHELL=3D/bin/bash drivers/android/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)
>> drivers/android/binder.c:2707:17: sparse: sparse: cast removes address s=
pace '__user' of expression
   drivers/android/binder.c:2716:17: sparse: sparse: cast removes address s=
pace '__user' of expression
   drivers/android/binder.c:4507:24: sparse: sparse: incorrect type in retu=
rn expression (different base types) @@     expected restricted __poll_t @@=
     got int @@
   drivers/android/binder.c:4507:24: sparse:     expected restricted __poll=
_t
   drivers/android/binder.c:4507:24: sparse:     got int

vim +/__user +2707 drivers/android/binder.c

512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2457  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2458  static void binder_transaction(struct binder_proc *proc,
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2459  			       struct binder_thread *thread,
4bfac80af3a63f drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2460  			       struct binder_transaction_data *tr, int reply,
4bfac80af3a63f drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2461  			       binder_size_t extra_buffers_size)
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2462  {
a056af42032e56 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2463  	int ret;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2464  	struct binder_transaction *t;
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2465  	struct binder_work *w;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2466  	struct binder_work *tcomplete;
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  2467  	binder_size_t buffer_offset =3D 0;
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  2468  	binder_size_t off_start_offset, off_end_offset;
212265e5ad726e drivers/android/binder.c         Arve Hj=F8nnev=E5g        2=
016-02-09  2469  	binder_size_t off_min;
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  2470  	binder_size_t sg_buf_offset, sg_buf_end_offset;
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2471  	binder_size_t user_offset =3D 0;
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2472  	struct binder_proc *target_proc =3D NULL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2473  	struct binder_thread *target_thread =3D NULL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2474  	struct binder_node *target_node =3D NULL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2475  	struct binder_transaction *in_reply_to =3D NULL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2476  	struct binder_transaction_log_entry *e;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2477  	uint32_t return_error =3D 0;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2478  	uint32_t return_error_param =3D 0;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2479  	uint32_t return_error_line =3D 0;
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2480  	binder_size_t last_fixup_obj_off =3D 0;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2481  	binder_size_t last_fixup_min_off =3D 0;
342e5c90b60134 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2482  	struct binder_context *context =3D proc->context;
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  2483  	int t_debug_id =3D atomic_inc_return(&binder_last_id);
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2484  	char *secctx =3D NULL;
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2485  	u32 secctx_sz =3D 0;
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2486  	const void __user *user_buffer =3D (const void __user *)
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2487  				(uintptr_t)tr->data.ptr.buffer;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2488  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2489  	e =3D binder_transaction_log_add(&binder_transaction_log);
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  2490  	e->debug_id =3D t_debug_id;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2491  	e->call_type =3D reply ? 2 : !!(tr->flags & TF_ONE_WAY);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2492  	e->from_proc =3D proc->pid;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2493  	e->from_thread =3D thread->pid;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2494  	e->target_handle =3D tr->target.handle;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2495  	e->data_size =3D tr->data_size;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2496  	e->offsets_size =3D tr->offsets_size;
51d8a7eca67784 drivers/android/binder.c         Christian Brauner     2019-=
10-08  2497  	strscpy(e->context_name, proc->context->name, BINDERFS_MAX_NA=
ME);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2498  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2499  	if (reply) {
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  2500  		binder_inner_proc_lock(proc);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2501  		in_reply_to =3D thread->transaction_stack;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2502  		if (in_reply_to =3D=3D NULL) {
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  2503  			binder_inner_proc_unlock(proc);
56b468fc709b2b drivers/staging/android/binder.c Anmol Sarma           2012-=
10-30  2504  			binder_user_error("%d:%d got reply transaction with no tran=
saction stack\n",
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2505  					  proc->pid, thread->pid);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2506  			return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2507  			return_error_param =3D -EPROTO;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2508  			return_error_line =3D __LINE__;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2509  			goto err_empty_call_stack;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2510  		}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2511  		if (in_reply_to->to_thread !=3D thread) {
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2512  			spin_lock(&in_reply_to->lock);
56b468fc709b2b drivers/staging/android/binder.c Anmol Sarma           2012-=
10-30  2513  			binder_user_error("%d:%d got reply transaction with bad tra=
nsaction stack, transaction %d has target %d:%d\n",
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2514  				proc->pid, thread->pid, in_reply_to->debug_id,
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2515  				in_reply_to->to_proc ?
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2516  				in_reply_to->to_proc->pid : 0,
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2517  				in_reply_to->to_thread ?
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2518  				in_reply_to->to_thread->pid : 0);
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2519  			spin_unlock(&in_reply_to->lock);
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  2520  			binder_inner_proc_unlock(proc);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2521  			return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2522  			return_error_param =3D -EPROTO;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2523  			return_error_line =3D __LINE__;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2524  			in_reply_to =3D NULL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2525  			goto err_bad_call_stack;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2526  		}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2527  		thread->transaction_stack =3D in_reply_to->to_parent;
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  2528  		binder_inner_proc_unlock(proc);
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  2529  		binder_set_nice(in_reply_to->saved_priority);
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  2530  		target_thread =3D binder_get_txn_from_and_acq_inner(in_reply=
_to);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2531  		if (target_thread =3D=3D NULL) {
324fa64cf41890 drivers/android/binder.c         Todd Kjos             2018-=
11-06  2532  			/* annotation for sparse */
324fa64cf41890 drivers/android/binder.c         Todd Kjos             2018-=
11-06  2533  			__release(&target_thread->proc->inner_lock);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2534  			return_error =3D BR_DEAD_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2535  			return_error_line =3D __LINE__;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2536  			goto err_dead_binder;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2537  		}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2538  		if (target_thread->transaction_stack !=3D in_reply_to) {
56b468fc709b2b drivers/staging/android/binder.c Anmol Sarma           2012-=
10-30  2539  			binder_user_error("%d:%d got reply transaction with bad tar=
get transaction stack %d, expected %d\n",
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2540  				proc->pid, thread->pid,
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2541  				target_thread->transaction_stack ?
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2542  				target_thread->transaction_stack->debug_id : 0,
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2543  				in_reply_to->debug_id);
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  2544  			binder_inner_proc_unlock(target_thread->proc);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2545  			return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2546  			return_error_param =3D -EPROTO;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2547  			return_error_line =3D __LINE__;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2548  			in_reply_to =3D NULL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2549  			target_thread =3D NULL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2550  			goto err_dead_binder;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2551  		}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2552  		target_proc =3D target_thread->proc;
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2553  		target_proc->tmp_ref++;
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  2554  		binder_inner_proc_unlock(target_thread->proc);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2555  	} else {
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2556  		if (tr->target.handle) {
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2557  			struct binder_ref *ref;
10f62861b4a2f2 drivers/staging/android/binder.c Seunghun Lee          2014-=
05-01  2558  =

eb34983ba170f2 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2559  			/*
eb34983ba170f2 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2560  			 * There must already be a strong ref
eb34983ba170f2 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2561  			 * on this node. If so, do a strong
eb34983ba170f2 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2562  			 * increment on the node to ensure it
eb34983ba170f2 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2563  			 * stays alive until the transaction is
eb34983ba170f2 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2564  			 * done.
eb34983ba170f2 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2565  			 */
2c1838dc6817dd drivers/android/binder.c         Todd Kjos             2017-=
06-29  2566  			binder_proc_lock(proc);
2c1838dc6817dd drivers/android/binder.c         Todd Kjos             2017-=
06-29  2567  			ref =3D binder_get_ref_olocked(proc, tr->target.handle,
2c1838dc6817dd drivers/android/binder.c         Todd Kjos             2017-=
06-29  2568  						     true);
eb34983ba170f2 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2569  			if (ref) {
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2570  				target_node =3D binder_get_node_refs_for_txn(
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2571  						ref->node, &target_proc,
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2572  						&return_error);
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2573  			} else {
1ae14df56cc3e8 drivers/android/binder.c         Ramji Jiyani          2021-=
08-02  2574  				binder_user_error("%d:%d got transaction to invalid handle=
, %u\n",
1ae14df56cc3e8 drivers/android/binder.c         Ramji Jiyani          2021-=
08-02  2575  						  proc->pid, thread->pid, tr->target.handle);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2576  				return_error =3D BR_FAILED_REPLY;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2577  			}
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2578  			binder_proc_unlock(proc);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2579  		} else {
c44b1231ff1170 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2580  			mutex_lock(&context->context_mgr_node_lock);
342e5c90b60134 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2581  			target_node =3D context->binder_context_mgr_node;
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2582  			if (target_node)
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2583  				target_node =3D binder_get_node_refs_for_txn(
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2584  						target_node, &target_proc,
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2585  						&return_error);
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2586  			else
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2587  				return_error =3D BR_DEAD_REPLY;
c44b1231ff1170 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2588  			mutex_unlock(&context->context_mgr_node_lock);
49ed96943a8e0c drivers/android/binder.c         Hridya Valsaraju      2019-=
07-15  2589  			if (target_node && target_proc->pid =3D=3D proc->pid) {
7aa135fcf26377 drivers/android/binder.c         Martijn Coenen        2018-=
03-28  2590  				binder_user_error("%d:%d got transaction to context manage=
r from process owning it\n",
7aa135fcf26377 drivers/android/binder.c         Martijn Coenen        2018-=
03-28  2591  						  proc->pid, thread->pid);
7aa135fcf26377 drivers/android/binder.c         Martijn Coenen        2018-=
03-28  2592  				return_error =3D BR_FAILED_REPLY;
7aa135fcf26377 drivers/android/binder.c         Martijn Coenen        2018-=
03-28  2593  				return_error_param =3D -EINVAL;
7aa135fcf26377 drivers/android/binder.c         Martijn Coenen        2018-=
03-28  2594  				return_error_line =3D __LINE__;
7aa135fcf26377 drivers/android/binder.c         Martijn Coenen        2018-=
03-28  2595  				goto err_invalid_target_handle;
7aa135fcf26377 drivers/android/binder.c         Martijn Coenen        2018-=
03-28  2596  			}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2597  		}
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2598  		if (!target_node) {
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2599  			/*
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2600  			 * return_error is set above
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2601  			 */
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2602  			return_error_param =3D -EINVAL;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2603  			return_error_line =3D __LINE__;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2604  			goto err_dead_binder;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2605  		}
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  2606  		e->to_node =3D target_node->debug_id;
4b836a1426cb0f drivers/android/binder.c         Jann Horn             2020-=
07-27  2607  		if (WARN_ON(proc =3D=3D target_proc)) {
4b836a1426cb0f drivers/android/binder.c         Jann Horn             2020-=
07-27  2608  			return_error =3D BR_FAILED_REPLY;
4b836a1426cb0f drivers/android/binder.c         Jann Horn             2020-=
07-27  2609  			return_error_param =3D -EINVAL;
4b836a1426cb0f drivers/android/binder.c         Jann Horn             2020-=
07-27  2610  			return_error_line =3D __LINE__;
4b836a1426cb0f drivers/android/binder.c         Jann Horn             2020-=
07-27  2611  			goto err_invalid_target_handle;
4b836a1426cb0f drivers/android/binder.c         Jann Horn             2020-=
07-27  2612  		}
52f88693378a58 drivers/android/binder.c         Todd Kjos             2021-=
10-12  2613  		if (security_binder_transaction(proc->cred,
52f88693378a58 drivers/android/binder.c         Todd Kjos             2021-=
10-12  2614  						target_proc->cred) < 0) {
79af73079d753b drivers/android/binder.c         Stephen Smalley       2015-=
01-21  2615  			return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2616  			return_error_param =3D -EPERM;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2617  			return_error_line =3D __LINE__;
79af73079d753b drivers/android/binder.c         Stephen Smalley       2015-=
01-21  2618  			goto err_invalid_target_handle;
79af73079d753b drivers/android/binder.c         Stephen Smalley       2015-=
01-21  2619  		}
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  2620  		binder_inner_proc_lock(proc);
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2621  =

44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2622  		w =3D list_first_entry_or_null(&thread->todo,
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2623  					     struct binder_work, entry);
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2624  		if (!(tr->flags & TF_ONE_WAY) && w &&
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2625  		    w->type =3D=3D BINDER_WORK_TRANSACTION) {
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2626  			/*
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2627  			 * Do not allow new outgoing transaction from a
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2628  			 * thread that has a transaction at the head of
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2629  			 * its todo list. Only need to check the head
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2630  			 * because binder_select_thread_ilocked picks a
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2631  			 * thread from proc->waiting_threads to enqueue
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2632  			 * the transaction, and nothing is queued to the
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2633  			 * todo list while the thread is on waiting_threads.
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2634  			 */
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2635  			binder_user_error("%d:%d new transaction not allowed when t=
here is a transaction on thread todo\n",
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2636  					  proc->pid, thread->pid);
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2637  			binder_inner_proc_unlock(proc);
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2638  			return_error =3D BR_FAILED_REPLY;
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2639  			return_error_param =3D -EPROTO;
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2640  			return_error_line =3D __LINE__;
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2641  			goto err_bad_todo_list;
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2642  		}
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  2643  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2644  		if (!(tr->flags & TF_ONE_WAY) && thread->transaction_stack) {
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2645  			struct binder_transaction *tmp;
10f62861b4a2f2 drivers/staging/android/binder.c Seunghun Lee          2014-=
05-01  2646  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2647  			tmp =3D thread->transaction_stack;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2648  			if (tmp->to_thread !=3D thread) {
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2649  				spin_lock(&tmp->lock);
56b468fc709b2b drivers/staging/android/binder.c Anmol Sarma           2012-=
10-30  2650  				binder_user_error("%d:%d got new transaction with bad tran=
saction stack, transaction %d has target %d:%d\n",
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2651  					proc->pid, thread->pid, tmp->debug_id,
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2652  					tmp->to_proc ? tmp->to_proc->pid : 0,
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2653  					tmp->to_thread ?
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2654  					tmp->to_thread->pid : 0);
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2655  				spin_unlock(&tmp->lock);
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  2656  				binder_inner_proc_unlock(proc);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2657  				return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2658  				return_error_param =3D -EPROTO;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2659  				return_error_line =3D __LINE__;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2660  				goto err_bad_call_stack;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2661  			}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2662  			while (tmp) {
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2663  				struct binder_thread *from;
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2664  =

7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2665  				spin_lock(&tmp->lock);
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2666  				from =3D tmp->from;
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2667  				if (from && from->proc =3D=3D target_proc) {
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2668  					atomic_inc(&from->tmp_ref);
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2669  					target_thread =3D from;
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2670  					spin_unlock(&tmp->lock);
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2671  					break;
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2672  				}
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2673  				spin_unlock(&tmp->lock);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2674  				tmp =3D tmp->from_parent;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2675  			}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2676  		}
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  2677  		binder_inner_proc_unlock(proc);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2678  	}
408c68b17aea2f drivers/android/binder.c         Martijn Coenen        2017-=
08-31  2679  	if (target_thread)
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2680  		e->to_thread =3D target_thread->pid;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2681  	e->to_proc =3D target_proc->pid;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2682  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2683  	/* TODO: reuse incoming transaction for reply */
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2684  	t =3D kzalloc(sizeof(*t), GFP_KERNEL);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2685  	if (t =3D=3D NULL) {
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2686  		return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2687  		return_error_param =3D -ENOMEM;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2688  		return_error_line =3D __LINE__;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2689  		goto err_alloc_t_failed;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2690  	}
44d8047f1d87ad drivers/android/binder.c         Todd Kjos             2018-=
08-28  2691  	INIT_LIST_HEAD(&t->fd_fixups);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2692  	binder_stats_created(BINDER_STAT_TRANSACTION);
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2693  	spin_lock_init(&t->lock);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2694  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2695  	tcomplete =3D kzalloc(sizeof(*tcomplete), GFP_KERNEL);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2696  	if (tcomplete =3D=3D NULL) {
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2697  		return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2698  		return_error_param =3D -ENOMEM;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2699  		return_error_line =3D __LINE__;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2700  		goto err_alloc_tcomplete_failed;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2701  	}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2702  	binder_stats_created(BINDER_STAT_TRANSACTION_COMPLETE);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2703  =

d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  2704  	t->debug_id =3D t_debug_id;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2705  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2706  	if (reply)
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30 @2707  		binder_debug(BINDER_DEBUG_TRANSACTION,
4bfac80af3a63f drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2708  			     "%d:%d BC_REPLY %d -> %d:%d, data %016llx-%016llx size=
 %lld-%lld-%lld\n",
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2709  			     proc->pid, thread->pid, t->debug_id,
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2710  			     target_proc->pid, target_thread->pid,
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2711  			     (u64)user_buffer,
da49889deb34d3 drivers/staging/android/binder.c Arve Hj=F8nnev=E5g        2=
014-02-21  2712  			     (u64)tr->data.ptr.offsets,
4bfac80af3a63f drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2713  			     (u64)tr->data_size, (u64)tr->offsets_size,
4bfac80af3a63f drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2714  			     (u64)extra_buffers_size);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2715  	else
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2716  		binder_debug(BINDER_DEBUG_TRANSACTION,
4bfac80af3a63f drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2717  			     "%d:%d BC_TRANSACTION %d -> %d - node %d, data %016llx=
-%016llx size %lld-%lld-%lld\n",
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2718  			     proc->pid, thread->pid, t->debug_id,
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2719  			     target_proc->pid, target_node->debug_id,
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2720  			     (u64)user_buffer,
da49889deb34d3 drivers/staging/android/binder.c Arve Hj=F8nnev=E5g        2=
014-02-21  2721  			     (u64)tr->data.ptr.offsets,
4bfac80af3a63f drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2722  			     (u64)tr->data_size, (u64)tr->offsets_size,
4bfac80af3a63f drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2723  			     (u64)extra_buffers_size);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2724  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2725  	if (!reply && !(tr->flags & TF_ONE_WAY))
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2726  		t->from =3D thread;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2727  	else
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2728  		t->from =3D NULL;
29bc22ac5e5bc6 drivers/android/binder.c         Todd Kjos             2021-=
10-12  2729  	t->sender_euid =3D proc->cred->euid;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2730  	t->to_proc =3D target_proc;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2731  	t->to_thread =3D target_thread;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2732  	t->code =3D tr->code;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2733  	t->flags =3D tr->flags;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2734  	t->priority =3D task_nice(current);
975a1ac9a9fe65 drivers/staging/android/binder.c Arve Hj=F8nnev=E5g        2=
012-10-16  2735  =

ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2736  	if (target_node && target_node->txn_security_ctx) {
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2737  		u32 secid;
0b0509508beff6 drivers/android/binder.c         Todd Kjos             2019-=
04-24  2738  		size_t added_size;
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2739  =

4d5b5539742d25 drivers/android/binder.c         Todd Kjos             2021-=
10-12  2740  		security_cred_getsecid(proc->cred, &secid);
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2741  		ret =3D security_secid_to_secctx(secid, &secctx, &secctx_sz);
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2742  		if (ret) {
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2743  			return_error =3D BR_FAILED_REPLY;
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2744  			return_error_param =3D ret;
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2745  			return_error_line =3D __LINE__;
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2746  			goto err_get_secctx_failed;
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2747  		}
0b0509508beff6 drivers/android/binder.c         Todd Kjos             2019-=
04-24  2748  		added_size =3D ALIGN(secctx_sz, sizeof(u64));
0b0509508beff6 drivers/android/binder.c         Todd Kjos             2019-=
04-24  2749  		extra_buffers_size +=3D added_size;
0b0509508beff6 drivers/android/binder.c         Todd Kjos             2019-=
04-24  2750  		if (extra_buffers_size < added_size) {
0b0509508beff6 drivers/android/binder.c         Todd Kjos             2019-=
04-24  2751  			/* integer overflow of extra_buffers_size */
0b0509508beff6 drivers/android/binder.c         Todd Kjos             2019-=
04-24  2752  			return_error =3D BR_FAILED_REPLY;
88f6c77927e4ae drivers/android/binder.c         Zhang Qilong          2020-=
10-26  2753  			return_error_param =3D -EINVAL;
0b0509508beff6 drivers/android/binder.c         Todd Kjos             2019-=
04-24  2754  			return_error_line =3D __LINE__;
0b0509508beff6 drivers/android/binder.c         Todd Kjos             2019-=
04-24  2755  			goto err_bad_extra_size;
0b0509508beff6 drivers/android/binder.c         Todd Kjos             2019-=
04-24  2756  		}
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2757  	}
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2758  =

975a1ac9a9fe65 drivers/staging/android/binder.c Arve Hj=F8nnev=E5g        2=
012-10-16  2759  	trace_binder_transaction(reply, t, target_node);
975a1ac9a9fe65 drivers/staging/android/binder.c Arve Hj=F8nnev=E5g        2=
012-10-16  2760  =

19c987241ca121 drivers/android/binder.c         Todd Kjos             2017-=
06-29  2761  	t->buffer =3D binder_alloc_new_buf(&target_proc->alloc, tr->d=
ata_size,
4bfac80af3a63f drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2762  		tr->offsets_size, extra_buffers_size,
261e7818f06ec5 drivers/android/binder.c         Martijn Coenen        2020-=
08-21  2763  		!reply && (t->flags & TF_ONE_WAY), current->tgid);
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2764  	if (IS_ERR(t->buffer)) {
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2765  		/*
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2766  		 * -ESRCH indicates VMA cleared. The target is dying.
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2767  		 */
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2768  		return_error_param =3D PTR_ERR(t->buffer);
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2769  		return_error =3D return_error_param =3D=3D -ESRCH ?
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2770  			BR_DEAD_REPLY : BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2771  		return_error_line =3D __LINE__;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2772  		t->buffer =3D NULL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2773  		goto err_binder_alloc_buf_failed;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2774  	}
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2775  	if (secctx) {
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2776  		int err;
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2777  		size_t buf_offset =3D ALIGN(tr->data_size, sizeof(void *)) +
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2778  				    ALIGN(tr->offsets_size, sizeof(void *)) +
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2779  				    ALIGN(extra_buffers_size, sizeof(void *)) -
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2780  				    ALIGN(secctx_sz, sizeof(u64));
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2781  =

bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  2782  		t->security_ctx =3D (uintptr_t)t->buffer->user_data + buf_of=
fset;
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2783  		err =3D binder_alloc_copy_to_buffer(&target_proc->alloc,
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2784  						  t->buffer, buf_offset,
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2785  						  secctx, secctx_sz);
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2786  		if (err) {
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2787  			t->security_ctx =3D 0;
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2788  			WARN_ON(1);
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2789  		}
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2790  		security_release_secctx(secctx, secctx_sz);
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2791  		secctx =3D NULL;
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  2792  	}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2793  	t->buffer->debug_id =3D t->debug_id;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2794  	t->buffer->transaction =3D t;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2795  	t->buffer->target_node =3D target_node;
0f966cba95c780 drivers/android/binder.c         Todd Kjos             2020-=
11-20  2796  	t->buffer->clear_on_free =3D !!(t->flags & TF_CLEAR_BUF);
975a1ac9a9fe65 drivers/staging/android/binder.c Arve Hj=F8nnev=E5g        2=
012-10-16  2797  	trace_binder_transaction_alloc_buf(t->buffer);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2798  =

1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2799  	if (binder_alloc_copy_user_to_buffer(
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2800  				&target_proc->alloc,
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2801  				t->buffer,
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2802  				ALIGN(tr->data_size, sizeof(void *)),
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2803  				(const void __user *)
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2804  					(uintptr_t)tr->data.ptr.offsets,
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2805  				tr->offsets_size)) {
56b468fc709b2b drivers/staging/android/binder.c Anmol Sarma           2012-=
10-30  2806  		binder_user_error("%d:%d got transaction with invalid offset=
s ptr\n",
56b468fc709b2b drivers/staging/android/binder.c Anmol Sarma           2012-=
10-30  2807  				proc->pid, thread->pid);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2808  		return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2809  		return_error_param =3D -EFAULT;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2810  		return_error_line =3D __LINE__;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2811  		goto err_copy_data_failed;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2812  	}
da49889deb34d3 drivers/staging/android/binder.c Arve Hj=F8nnev=E5g        2=
014-02-21  2813  	if (!IS_ALIGNED(tr->offsets_size, sizeof(binder_size_t)))=
 {
da49889deb34d3 drivers/staging/android/binder.c Arve Hj=F8nnev=E5g        2=
014-02-21  2814  		binder_user_error("%d:%d got transaction with invalid of=
fsets size, %lld\n",
da49889deb34d3 drivers/staging/android/binder.c Arve Hj=F8nnev=E5g        2=
014-02-21  2815  				proc->pid, thread->pid, (u64)tr->offsets_size);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2816  		return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2817  		return_error_param =3D -EINVAL;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2818  		return_error_line =3D __LINE__;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2819  		goto err_bad_offset;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2820  	}
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2821  	if (!IS_ALIGNED(extra_buffers_size, sizeof(u64))) {
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2822  		binder_user_error("%d:%d got transaction with unaligned buff=
ers size, %lld\n",
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2823  				  proc->pid, thread->pid,
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2824  				  (u64)extra_buffers_size);
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2825  		return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2826  		return_error_param =3D -EINVAL;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2827  		return_error_line =3D __LINE__;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2828  		goto err_bad_offset;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2829  	}
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  2830  	off_start_offset =3D ALIGN(tr->data_size, sizeof(void *));
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  2831  	buffer_offset =3D off_start_offset;
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  2832  	off_end_offset =3D off_start_offset + tr->offsets_size;
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  2833  	sg_buf_offset =3D ALIGN(off_end_offset, sizeof(void *));
a56587065094fd drivers/android/binder.c         Martijn Coenen        2019-=
07-09  2834  	sg_buf_end_offset =3D sg_buf_offset + extra_buffers_size -
a56587065094fd drivers/android/binder.c         Martijn Coenen        2019-=
07-09  2835  		ALIGN(secctx_sz, sizeof(u64));
212265e5ad726e drivers/android/binder.c         Arve Hj=F8nnev=E5g        2=
016-02-09  2836  	off_min =3D 0;
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  2837  	for (buffer_offset =3D off_start_offset; buffer_offset < off_=
end_offset;
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  2838  	     buffer_offset +=3D sizeof(binder_size_t)) {
feba3900cabb8e drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2839  		struct binder_object_header *hdr;
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2840  		size_t object_size;
7a67a39320dfba drivers/android/binder.c         Todd Kjos             2019-=
02-08  2841  		struct binder_object object;
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2842  		binder_size_t object_offset;
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2843  		binder_size_t copy_size;
10f62861b4a2f2 drivers/staging/android/binder.c Seunghun Lee          2014-=
05-01  2844  =

bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2845  		if (binder_alloc_copy_from_buffer(&target_proc->alloc,
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2846  						  &object_offset,
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2847  						  t->buffer,
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2848  						  buffer_offset,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2849  						  sizeof(object_offset))) {
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2850  			return_error =3D BR_FAILED_REPLY;
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2851  			return_error_param =3D -EINVAL;
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2852  			return_error_line =3D __LINE__;
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2853  			goto err_bad_offset;
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2854  		}
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2855  =

d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2856  		/*
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2857  		 * Copy the source user buffer up to the next object
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2858  		 * that will be processed.
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2859  		 */
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2860  		copy_size =3D object_offset - user_offset;
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2861  		if (copy_size && (user_offset > object_offset ||
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2862  				binder_alloc_copy_user_to_buffer(
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2863  					&target_proc->alloc,
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2864  					t->buffer, user_offset,
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2865  					user_buffer + user_offset,
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2866  					copy_size))) {
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2867  			binder_user_error("%d:%d got transaction with invalid data =
ptr\n",
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2868  					proc->pid, thread->pid);
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2869  			return_error =3D BR_FAILED_REPLY;
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2870  			return_error_param =3D -EFAULT;
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2871  			return_error_line =3D __LINE__;
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2872  			goto err_copy_data_failed;
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2873  		}
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2874  		object_size =3D binder_get_object(target_proc, user_buffer,
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2875  				t->buffer, object_offset, &object);
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2876  		if (object_size =3D=3D 0 || object_offset < off_min) {
feba3900cabb8e drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2877  			binder_user_error("%d:%d got transaction with invalid offse=
t (%lld, min %lld max %lld) or object.\n",
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2878  					  proc->pid, thread->pid,
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2879  					  (u64)object_offset,
212265e5ad726e drivers/android/binder.c         Arve Hj=F8nnev=E5g        2=
016-02-09  2880  					  (u64)off_min,
feba3900cabb8e drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2881  					  (u64)t->buffer->data_size);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2882  			return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2883  			return_error_param =3D -EINVAL;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2884  			return_error_line =3D __LINE__;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2885  			goto err_bad_offset;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2886  		}
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2887  		/*
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2888  		 * Set offset to the next buffer fragment to be
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2889  		 * copied
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2890  		 */
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2891  		user_offset =3D object_offset + object_size;
feba3900cabb8e drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2892  =

7a67a39320dfba drivers/android/binder.c         Todd Kjos             2019-=
02-08  2893  		hdr =3D &object.hdr;
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2894  		off_min =3D object_offset + object_size;
feba3900cabb8e drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2895  		switch (hdr->type) {
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2896  		case BINDER_TYPE_BINDER:
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2897  		case BINDER_TYPE_WEAK_BINDER: {
feba3900cabb8e drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2898  			struct flat_binder_object *fp;
10f62861b4a2f2 drivers/staging/android/binder.c Seunghun Lee          2014-=
05-01  2899  =

feba3900cabb8e drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2900  			fp =3D to_flat_binder_object(hdr);
a056af42032e56 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2901  			ret =3D binder_translate_binder(fp, t, thread);
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2902  =

bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2903  			if (ret < 0 ||
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2904  			    binder_alloc_copy_to_buffer(&target_proc->alloc,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2905  							t->buffer,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2906  							object_offset,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2907  							fp, sizeof(*fp))) {
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2908  				return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2909  				return_error_param =3D ret;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2910  				return_error_line =3D __LINE__;
a056af42032e56 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2911  				goto err_translate_failed;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2912  			}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2913  		} break;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2914  		case BINDER_TYPE_HANDLE:
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2915  		case BINDER_TYPE_WEAK_HANDLE: {
feba3900cabb8e drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2916  			struct flat_binder_object *fp;
0a3ffab93fe525 drivers/android/binder.c         Arve Hj=F8nnev=E5g        2=
016-10-24  2917  =

feba3900cabb8e drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2918  			fp =3D to_flat_binder_object(hdr);
a056af42032e56 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2919  			ret =3D binder_translate_handle(fp, t, thread);
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2920  			if (ret < 0 ||
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2921  			    binder_alloc_copy_to_buffer(&target_proc->alloc,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2922  							t->buffer,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2923  							object_offset,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2924  							fp, sizeof(*fp))) {
79af73079d753b drivers/android/binder.c         Stephen Smalley       2015-=
01-21  2925  				return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2926  				return_error_param =3D ret;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2927  				return_error_line =3D __LINE__;
a056af42032e56 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2928  				goto err_translate_failed;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2929  			}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2930  		} break;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2931  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2932  		case BINDER_TYPE_FD: {
feba3900cabb8e drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2933  			struct binder_fd_object *fp =3D to_binder_fd_object(hdr);
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2934  			binder_size_t fd_offset =3D object_offset +
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2935  				(uintptr_t)&fp->fd - (uintptr_t)fp;
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2936  			int ret =3D binder_translate_fd(fp->fd, fd_offset, t,
8ced0c6231ead2 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2937  						      thread, in_reply_to);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2938  =

bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2939  			fp->pad_binder =3D 0;
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2940  			if (ret < 0 ||
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2941  			    binder_alloc_copy_to_buffer(&target_proc->alloc,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2942  							t->buffer,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2943  							object_offset,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  2944  							fp, sizeof(*fp))) {
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2945  				return_error =3D BR_FAILED_REPLY;
44d8047f1d87ad drivers/android/binder.c         Todd Kjos             2018-=
08-28  2946  				return_error_param =3D ret;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2947  				return_error_line =3D __LINE__;
a056af42032e56 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2948  				goto err_translate_failed;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2949  			}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  2950  		} break;
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2951  		case BINDER_TYPE_FDA: {
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2952  			struct binder_object ptr_object;
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2953  			binder_size_t parent_offset;
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2954  			struct binder_fd_array_object *fda =3D
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2955  				to_binder_fd_array_object(hdr);
16981742717b04 drivers/android/binder.c         Todd Kjos             2019-=
12-13  2956  			size_t num_valid =3D (buffer_offset - off_start_offset) /
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  2957  						sizeof(binder_size_t);
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2958  			struct binder_buffer_object *parent =3D
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2959  				binder_validate_ptr(target_proc, t->buffer,
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2960  						    &ptr_object, fda->parent,
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2961  						    off_start_offset,
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2962  						    &parent_offset,
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  2963  						    num_valid);
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2964  			if (!parent) {
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2965  				binder_user_error("%d:%d got transaction with invalid pare=
nt offset or type\n",
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2966  						  proc->pid, thread->pid);
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2967  				return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2968  				return_error_param =3D -EINVAL;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2969  				return_error_line =3D __LINE__;
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2970  				goto err_bad_parent;
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2971  			}
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2972  			if (!binder_validate_fixup(target_proc, t->buffer,
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2973  						   off_start_offset,
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2974  						   parent_offset,
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2975  						   fda->parent_offset,
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2976  						   last_fixup_obj_off,
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2977  						   last_fixup_min_off)) {
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2978  				binder_user_error("%d:%d got transaction with out-of-order=
 buffer fixup\n",
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2979  						  proc->pid, thread->pid);
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2980  				return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2981  				return_error_param =3D -EINVAL;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2982  				return_error_line =3D __LINE__;
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2983  				goto err_bad_parent;
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2984  			}
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2985  			ret =3D binder_translate_fd_array(fda, parent, t, thread,
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2986  							in_reply_to);
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2987  			if (ret < 0 ||
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2988  			    binder_alloc_copy_to_buffer(&target_proc->alloc,
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2989  							t->buffer,
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2990  							object_offset,
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  2991  							fda, sizeof(*fda))) {
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2992  				return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2993  				return_error_param =3D ret;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  2994  				return_error_line =3D __LINE__;
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2995  				goto err_translate_failed;
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2996  			}
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  2997  			last_fixup_obj_off =3D parent_offset;
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2998  			last_fixup_min_off =3D
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  2999  				fda->parent_offset + sizeof(u32) * fda->num_fds;
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3000  		} break;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3001  		case BINDER_TYPE_PTR: {
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3002  			struct binder_buffer_object *bp =3D
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3003  				to_binder_buffer_object(hdr);
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  3004  			size_t buf_left =3D sg_buf_end_offset - sg_buf_offset;
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  3005  			size_t num_valid;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3006  =

7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3007  			if (bp->length > buf_left) {
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3008  				binder_user_error("%d:%d got transaction with too large bu=
ffer\n",
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3009  						  proc->pid, thread->pid);
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3010  				return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3011  				return_error_param =3D -EINVAL;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3012  				return_error_line =3D __LINE__;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3013  				goto err_bad_offset;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3014  			}
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  3015  			if (binder_alloc_copy_user_to_buffer(
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  3016  						&target_proc->alloc,
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  3017  						t->buffer,
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  3018  						sg_buf_offset,
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  3019  						(const void __user *)
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  3020  							(uintptr_t)bp->buffer,
1a7c3d9bb7a926 drivers/android/binder.c         Todd Kjos             2019-=
02-08  3021  						bp->length)) {
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3022  				binder_user_error("%d:%d got transaction with invalid offs=
ets ptr\n",
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3023  						  proc->pid, thread->pid);
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3024  				return_error_param =3D -EFAULT;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3025  				return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3026  				return_error_line =3D __LINE__;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3027  				goto err_copy_data_failed;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3028  			}
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3029  			/* Fixup buffer pointer to target proc address space */
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  3030  			bp->buffer =3D (uintptr_t)
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  3031  				t->buffer->user_data + sg_buf_offset;
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  3032  			sg_buf_offset +=3D ALIGN(bp->length, sizeof(u64));
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3033  =

16981742717b04 drivers/android/binder.c         Todd Kjos             2019-=
12-13  3034  			num_valid =3D (buffer_offset - off_start_offset) /
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  3035  					sizeof(binder_size_t);
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  3036  			ret =3D binder_fixup_parent(t, thread, bp,
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  3037  						  off_start_offset,
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  3038  						  num_valid,
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  3039  						  last_fixup_obj_off,
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3040  						  last_fixup_min_off);
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  3041  			if (ret < 0 ||
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  3042  			    binder_alloc_copy_to_buffer(&target_proc->alloc,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  3043  							t->buffer,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  3044  							object_offset,
bb4a2e48d5100e drivers/android/binder.c         Todd Kjos             2019-=
06-28  3045  							bp, sizeof(*bp))) {
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3046  				return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3047  				return_error_param =3D ret;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3048  				return_error_line =3D __LINE__;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3049  				goto err_translate_failed;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3050  			}
db6b0b810bf945 drivers/android/binder.c         Todd Kjos             2019-=
02-08  3051  			last_fixup_obj_off =3D object_offset;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3052  			last_fixup_min_off =3D 0;
7980240b6d63e0 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3053  		} break;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3054  		default:
64dcfe6b84d410 drivers/staging/android/binder.c Serban Constantinescu 2013-=
07-04  3055  			binder_user_error("%d:%d got transaction with invalid objec=
t type, %x\n",
feba3900cabb8e drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3056  				proc->pid, thread->pid, hdr->type);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3057  			return_error =3D BR_FAILED_REPLY;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3058  			return_error_param =3D -EINVAL;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3059  			return_error_line =3D __LINE__;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3060  			goto err_bad_object_type;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3061  		}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3062  	}
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3063  	/* Done processing objects, copy the rest of the buffer */
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3064  	if (binder_alloc_copy_user_to_buffer(
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3065  				&target_proc->alloc,
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3066  				t->buffer, user_offset,
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3067  				user_buffer + user_offset,
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3068  				tr->data_size - user_offset)) {
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3069  		binder_user_error("%d:%d got transaction with invalid data p=
tr\n",
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3070  				proc->pid, thread->pid);
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3071  		return_error =3D BR_FAILED_REPLY;
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3072  		return_error_param =3D -EFAULT;
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3073  		return_error_line =3D __LINE__;
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3074  		goto err_copy_data_failed;
d51c5e7a3791e9 drivers/android/binder.c         Todd Kjos             2021-=
11-23  3075  	}
a7dc1e6f99df59 drivers/android/binder.c         Hang Lu               2021-=
04-09  3076  	if (t->buffer->oneway_spam_suspect)
a7dc1e6f99df59 drivers/android/binder.c         Hang Lu               2021-=
04-09  3077  		tcomplete->type =3D BINDER_WORK_TRANSACTION_ONEWAY_SPAM_SUSP=
ECT;
a7dc1e6f99df59 drivers/android/binder.c         Hang Lu               2021-=
04-09  3078  	else
ccae6f676001d0 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3079  		tcomplete->type =3D BINDER_WORK_TRANSACTION_COMPLETE;
673068eee8560d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3080  	t->work.type =3D BINDER_WORK_TRANSACTION;
ccae6f676001d0 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3081  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3082  	if (reply) {
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3083  		binder_enqueue_thread_work(thread, tcomplete);
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  3084  		binder_inner_proc_lock(target_proc);
b564171ade7057 drivers/android/binder.c         Li Li                 2021-=
09-10  3085  		if (target_thread->is_dead) {
b564171ade7057 drivers/android/binder.c         Li Li                 2021-=
09-10  3086  			return_error =3D BR_DEAD_REPLY;
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  3087  			binder_inner_proc_unlock(target_proc);
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3088  			goto err_dead_proc_or_thread;
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  3089  		}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3090  		BUG_ON(t->buffer->async_transaction !=3D 0);
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  3091  		binder_pop_transaction_ilocked(target_thread, in_reply_to);
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3092  		binder_enqueue_thread_work_ilocked(target_thread, &t->work);
432ff1e91694e4 drivers/android/binder.c         Marco Ballesio        2021-=
03-15  3093  		target_proc->outstanding_txns++;
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  3094  		binder_inner_proc_unlock(target_proc);
408c68b17aea2f drivers/android/binder.c         Martijn Coenen        2017-=
08-31  3095  		wake_up_interruptible_sync(&target_thread->wait);
b6d282cea3f3ed drivers/android/binder.c         Todd Kjos             2017-=
06-29  3096  		binder_free_transaction(in_reply_to);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3097  	} else if (!(t->flags & TF_ONE_WAY)) {
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3098  		BUG_ON(t->buffer->async_transaction !=3D 0);
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  3099  		binder_inner_proc_lock(proc);
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3100  		/*
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3101  		 * Defer the TRANSACTION_COMPLETE, so we don't return to
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3102  		 * userspace immediately; this allows the target process to
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3103  		 * immediately start processing this transaction, reducing
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3104  		 * latency. We will then return the TRANSACTION_COMPLETE when
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3105  		 * the target replies (or there is an error).
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3106  		 */
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3107  		binder_enqueue_deferred_thread_work_ilocked(thread, tcomplet=
e);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3108  		t->need_reply =3D 1;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3109  		t->from_parent =3D thread->transaction_stack;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3110  		thread->transaction_stack =3D t;
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  3111  		binder_inner_proc_unlock(proc);
432ff1e91694e4 drivers/android/binder.c         Marco Ballesio        2021-=
03-15  3112  		return_error =3D binder_proc_transaction(t,
432ff1e91694e4 drivers/android/binder.c         Marco Ballesio        2021-=
03-15  3113  				target_proc, target_thread);
432ff1e91694e4 drivers/android/binder.c         Marco Ballesio        2021-=
03-15  3114  		if (return_error) {
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  3115  			binder_inner_proc_lock(proc);
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  3116  			binder_pop_transaction_ilocked(thread, t);
0b89d69a962588 drivers/android/binder.c         Martijn Coenen        2017-=
06-29  3117  			binder_inner_proc_unlock(proc);
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3118  			goto err_dead_proc_or_thread;
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3119  		}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3120  	} else {
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3121  		BUG_ON(target_node =3D=3D NULL);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3122  		BUG_ON(t->buffer->async_transaction !=3D 1);
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3123  		binder_enqueue_thread_work(thread, tcomplete);
432ff1e91694e4 drivers/android/binder.c         Marco Ballesio        2021-=
03-15  3124  		return_error =3D binder_proc_transaction(t, target_proc, NUL=
L);
432ff1e91694e4 drivers/android/binder.c         Marco Ballesio        2021-=
03-15  3125  		if (return_error)
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3126  			goto err_dead_proc_or_thread;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3127  	}
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3128  	if (target_thread)
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3129  		binder_thread_dec_tmpref(target_thread);
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3130  	binder_proc_dec_tmpref(target_proc);
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  3131  	if (target_node)
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  3132  		binder_dec_node_tmpref(target_node);
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3133  	/*
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3134  	 * write barrier to synchronize with initialization
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3135  	 * of log entry
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3136  	 */
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3137  	smp_wmb();
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3138  	WRITE_ONCE(e->debug_id_done, t_debug_id);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3139  	return;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3140  =

7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3141  err_dead_proc_or_thread:
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3142  	return_error_line =3D __LINE__;
d53bebdf4d7794 drivers/android/binder.c         Xu YiPing             2017-=
09-05  3143  	binder_dequeue_work(proc, tcomplete);
a056af42032e56 drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3144  err_translate_failed:
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3145  err_bad_object_type:
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3146  err_bad_offset:
def95c73567dfa drivers/android/binder.c         Martijn Coenen        2017-=
02-03  3147  err_bad_parent:
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3148  err_copy_data_failed:
44d8047f1d87ad drivers/android/binder.c         Todd Kjos             2018-=
08-28  3149  	binder_free_txn_fixups(t);
975a1ac9a9fe65 drivers/staging/android/binder.c Arve Hj=F8nnev=E5g        2=
012-10-16  3150  	trace_binder_transaction_failed_buffer_release(t->buffer);
5fdb55c1ac9585 drivers/android/binder.c         Todd Kjos             2021-=
08-30  3151  	binder_transaction_buffer_release(target_proc, NULL, t->buffe=
r,
bde4a19fc04f5f drivers/android/binder.c         Todd Kjos             2019-=
02-08  3152  					  buffer_offset, true);
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  3153  	if (target_node)
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  3154  		binder_dec_node_tmpref(target_node);
eb34983ba170f2 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3155  	target_node =3D NULL;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3156  	t->buffer->transaction =3D NULL;
19c987241ca121 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3157  	binder_alloc_free_buf(&target_proc->alloc, t->buffer);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3158  err_binder_alloc_buf_failed:
0b0509508beff6 drivers/android/binder.c         Todd Kjos             2019-=
04-24  3159  err_bad_extra_size:
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  3160  	if (secctx)
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  3161  		security_release_secctx(secctx, secctx_sz);
ec74136ded792d drivers/android/binder.c         Todd Kjos             2019-=
01-14  3162  err_get_secctx_failed:
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3163  	kfree(tcomplete);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3164  	binder_stats_deleted(BINDER_STAT_TRANSACTION_COMPLETE);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3165  err_alloc_tcomplete_failed:
1987f112f1425c drivers/android/binder.c         Frankie.Chang         2020-=
11-11  3166  	if (trace_binder_txn_latency_free_enabled())
1987f112f1425c drivers/android/binder.c         Frankie.Chang         2020-=
11-11  3167  		binder_txn_latency_free(t);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3168  	kfree(t);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3169  	binder_stats_deleted(BINDER_STAT_TRANSACTION);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3170  err_alloc_t_failed:
44b73962cb25f1 drivers/android/binder.c         Sherry Yang           2018-=
08-13  3171  err_bad_todo_list:
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3172  err_bad_call_stack:
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3173  err_empty_call_stack:
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3174  err_dead_binder:
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3175  err_invalid_target_handle:
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3176  	if (target_thread)
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3177  		binder_thread_dec_tmpref(target_thread);
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3178  	if (target_proc)
7a4408c6bd3eb1 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3179  		binder_proc_dec_tmpref(target_proc);
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  3180  	if (target_node) {
eb34983ba170f2 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3181  		binder_dec_node(target_node, 1, 0);
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  3182  		binder_dec_node_tmpref(target_node);
512cf465ee01eb drivers/android/binder.c         Todd Kjos             2017-=
09-29  3183  	}
eb34983ba170f2 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3184  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3185  	binder_debug(BINDER_DEBUG_FAILED_TRANSACTION,
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3186  		     "%d:%d transaction failed %d/%d, size %lld-%lld line %d=
\n",
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3187  		     proc->pid, thread->pid, return_error, return_error_para=
m,
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3188  		     (u64)tr->data_size, (u64)tr->offsets_size,
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3189  		     return_error_line);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3190  =

355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3191  	{
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3192  		struct binder_transaction_log_entry *fe;
10f62861b4a2f2 drivers/staging/android/binder.c Seunghun Lee          2014-=
05-01  3193  =

57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3194  		e->return_error =3D return_error;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3195  		e->return_error_param =3D return_error_param;
57ada2fb2250ea drivers/android/binder.c         Todd Kjos             2017-=
06-29  3196  		e->return_error_line =3D return_error_line;
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3197  		fe =3D binder_transaction_log_add(&binder_transaction_log_fa=
iled);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3198  		*fe =3D *e;
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3199  		/*
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3200  		 * write barrier to synchronize with initialization
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3201  		 * of log entry
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3202  		 */
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3203  		smp_wmb();
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3204  		WRITE_ONCE(e->debug_id_done, t_debug_id);
d99c7333ab1c9d drivers/android/binder.c         Todd Kjos             2017-=
06-29  3205  		WRITE_ONCE(fe->debug_id_done, t_debug_id);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3206  	}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3207  =

26549d17741035 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3208  	BUG_ON(thread->return_error.cmd !=3D BR_OK);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3209  	if (in_reply_to) {
26549d17741035 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3210  		thread->return_error.cmd =3D BR_TRANSACTION_COMPLETE;
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3211  		binder_enqueue_thread_work(thread, &thread->return_error.wor=
k);
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3212  		binder_send_failed_reply(in_reply_to, return_error);
26549d17741035 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3213  	} else {
26549d17741035 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3214  		thread->return_error.cmd =3D return_error;
148ade2c4d4f46 drivers/android/binder.c         Martijn Coenen        2017-=
11-15  3215  		binder_enqueue_thread_work(thread, &thread->return_error.wor=
k);
26549d17741035 drivers/android/binder.c         Todd Kjos             2017-=
06-29  3216  	}
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3217  }
355b0502f6efea drivers/staging/android/binder.c Greg Kroah-Hartman    2011-=
11-30  3218  =


---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

