Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 039FA175B9B
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 14:29:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7A07485817;
	Mon,  2 Mar 2020 13:29:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FyoH6vPUG53n; Mon,  2 Mar 2020 13:29:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C4AD6854CC;
	Mon,  2 Mar 2020 13:29:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4000D1BF29E
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:29:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3C9FD8700E
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pCA9YeqeM3xG for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 13:29:04 +0000 (UTC)
X-Greylist: delayed 00:24:19 by SQLgrey-1.7.6
Received: from mail-wr1-f74.google.com (mail-wr1-f74.google.com
 [209.85.221.74])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 572AE87032
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 13:29:04 +0000 (UTC)
Received: by mail-wr1-f74.google.com with SMTP id d7so1841451wrr.0
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 05:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=JEYVQ/93cUIIc6BO5V/NQlPPY1ArQwYADsRJbFdijd8=;
 b=ifY/Bd7g+2OhtayWGvfN9k47hFCAyCdcGk5ycHkoHFt8uMYtYWW/iEampGrQfd00jA
 NhMrguaHSkQJVtHIyOtncYN4AdA6RkzmuDiqALK2XONIpaXftSzaORyPsma/X0e67210
 2dp05VBpxYq6vTcF0b1otLbf7BCFz9tusGS262gHtr0F/jJohXRbyDV4UjhwEi8yQLym
 vy/+nvRVT/VDr3kOvQvqK7WXNln1+VG7JUtD4IYmrtd+F2GzFBp2099skMDQBOZBaCnR
 c7Z3ayvTiUb+Azio8W+ZoGneaD7wE3R3dm0UcEJD5Ab5vt3Cd9s+PflF5vkgxSCgRqk2
 R2Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=JEYVQ/93cUIIc6BO5V/NQlPPY1ArQwYADsRJbFdijd8=;
 b=PjHXL4H8G+HL4oWk8ua/xYRCD76r/OjjUHeODxZKxg4oVynKWDDuDBe1bdGgti1WfD
 jZxc2v71ly/VdEbXpLZ2W/KySP8/KSrrZ+Fb/cxIr6vimMddHZo0tcaZo246yVVuGQVQ
 YfpYU50wWFgie8FNLgCeuwaIYilEBNREsNSXWZ7MOPNj28kiWKz4nlYATxSjZ0vTJsSh
 PF8IfjviAtALp6Ny14wt0lAKrryxv04COde2dUF6oeSaSbxAkZpzYNAzjM5RBwPa62NN
 Ti+tu55bePAqvWNNEBwcxvYGf8NlPVO647JoQUIoUke6flEDjBe0kpxG/LNN4vUvxTIJ
 uXNQ==
X-Gm-Message-State: ANhLgQ2Zdtc0chpzn7L1JhmbPVkBxgjK9SRUpcRwRX4OifEhP7o5kyZE
 /AXzY9YAlRVsagKvMxeUA22cSZs6wcw=
X-Google-Smtp-Source: APXvYqylIVXtOKiOFEzyHNHRqhYhFLw9Oy4b+pL2He/Fq3tNdkrsSiy4aLsLJ5pp9R9QUaRQhrSKuXkn2FM=
X-Received: by 2002:a5d:5286:: with SMTP id c6mr15916314wrv.418.1583154283684; 
 Mon, 02 Mar 2020 05:04:43 -0800 (PST)
Date: Mon,  2 Mar 2020 14:04:29 +0100
In-Reply-To: <20200302130430.201037-1-glider@google.com>
Message-Id: <20200302130430.201037-2-glider@google.com>
Mime-Version: 1.0
References: <20200302130430.201037-1-glider@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
From: glider@google.com
To: tkjos@google.com, keescook@chromium.org, gregkh@linuxfoundation.org, 
 arve@android.com, mingo@redhat.com
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
Cc: devel@driverdev.osuosl.org, jannh@google.com, peterz@infradead.org,
 linux-kernel@vger.kernel.org, Alexander Potapenko <glider@google.com>,
 dvyukov@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Certain copy_from_user() invocations in binder.c are known to
unconditionally initialize locals before their first use, like e.g. in
the following case:

	struct binder_transaction_data tr;
	if (copy_from_user(&tr, ptr, sizeof(tr)))
		return -EFAULT;

In such cases enabling CONFIG_INIT_STACK_ALL leads to insertion of
redundant locals initialization that the compiler fails to remove.
To work around this problem till Clang can deal with it, we apply
__no_initialize to local Binder structures.

This patch was generated using the following Coccinelle script:

  @match@
  type T;
  identifier var;
  position p0, p1;
  @@
  T var@p0;
  ...
  copy_from_user(&var,..., sizeof(var))@p1

  @escapes depends on match@
  type match.T;
  identifier match.var;
  position match.p0,match.p1;
  @@
  T var@p0;
  ... var ...
  copy_from_user(&var,..., sizeof(var))@p1

  @local_inited_by_cfu depends on !escapes@
  type T;
  identifier var;
  position match.p0,match.p1;
  fresh identifier var_noinit = var##" __no_initialize";
  @@
  -T var@p0;
  +T var_noinit;
  ...
  copy_from_user(&var,..., sizeof(var))@p1

Cc: Kees Cook <keescook@chromium.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Alexander Potapenko <glider@google.com>

---
 v2:
  - changed __do_not_initialize to __no_initialize as requested by Kees
    Cook
  - wrote a Coccinelle script to generate the patch
---
 drivers/android/binder.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index a6b2082c24f8f..a59871532ff6b 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3788,7 +3788,7 @@ static int binder_thread_write(struct binder_proc *proc,
 
 		case BC_TRANSACTION_SG:
 		case BC_REPLY_SG: {
-			struct binder_transaction_data_sg tr;
+			struct binder_transaction_data_sg tr __no_initialize;
 
 			if (copy_from_user(&tr, ptr, sizeof(tr)))
 				return -EFAULT;
@@ -3799,7 +3799,7 @@ static int binder_thread_write(struct binder_proc *proc,
 		}
 		case BC_TRANSACTION:
 		case BC_REPLY: {
-			struct binder_transaction_data tr;
+			struct binder_transaction_data tr __no_initialize;
 
 			if (copy_from_user(&tr, ptr, sizeof(tr)))
 				return -EFAULT;
@@ -4827,7 +4827,7 @@ static int binder_ioctl_write_read(struct file *filp,
 	struct binder_proc *proc = filp->private_data;
 	unsigned int size = _IOC_SIZE(cmd);
 	void __user *ubuf = (void __user *)arg;
-	struct binder_write_read bwr;
+	struct binder_write_read bwr __no_initialize;
 
 	if (size != sizeof(struct binder_write_read)) {
 		ret = -EINVAL;
@@ -5039,7 +5039,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		break;
 	}
 	case BINDER_SET_CONTEXT_MGR_EXT: {
-		struct flat_binder_object fbo;
+		struct flat_binder_object fbo __no_initialize;
 
 		if (copy_from_user(&fbo, ubuf, sizeof(fbo))) {
 			ret = -EINVAL;
@@ -5076,7 +5076,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		break;
 	}
 	case BINDER_GET_NODE_INFO_FOR_REF: {
-		struct binder_node_info_for_ref info;
+		struct binder_node_info_for_ref info __no_initialize;
 
 		if (copy_from_user(&info, ubuf, sizeof(info))) {
 			ret = -EFAULT;
@@ -5095,7 +5095,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		break;
 	}
 	case BINDER_GET_NODE_DEBUG_INFO: {
-		struct binder_node_debug_info info;
+		struct binder_node_debug_info info __no_initialize;
 
 		if (copy_from_user(&info, ubuf, sizeof(info))) {
 			ret = -EFAULT;
-- 
2.25.0.265.gbab2e86ba0-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
