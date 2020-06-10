Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB341F5C94
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jun 2020 22:14:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B7D588849F;
	Wed, 10 Jun 2020 20:14:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8KlUQDzE2FV5; Wed, 10 Jun 2020 20:14:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB9F588414;
	Wed, 10 Jun 2020 20:14:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1A7F1BF407
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 20:14:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AC28587271
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 20:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wza4IwN0bckQ for <devel@linuxdriverproject.org>;
 Wed, 10 Jun 2020 20:14:42 +0000 (UTC)
X-Greylist: delayed 00:15:03 by SQLgrey-1.7.6
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com
 [136.143.188.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F27C986F53
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 20:14:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1591819175; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=CCM/uK+8z2LgiHjGSaoaqB2YZaB5cL+q75We67/D58WGMSwx7FYzXqiR+4/Vp6F07ZUFnzFj6OxEYE2j5Ls0P6XniBnCPbDqbllCwuISzNkQZBfyrc+QtX4ZSAxz1yPCS0ilAASGOL/KCqMrJ7oyjRFMaHRuSd6mvi0CYjTtK4k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; 
 t=1591819175; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To; 
 bh=w0o4OowJsl4iAr761FXtE6DpOWppvwGF0W6F8ylVrDE=; 
 b=eUo1EnNSUZ2kp67gQ/lzbN3m3rne23/SmR3etvpWrXTmXP15ToY+jnQqpiOMPw3PuZ2TDhvCxLZnFW0oUxdJBPICcYT5Pibg7LfxyM2wz1a1SYiSYSrK6eH4w/wonHPXA6/Xner3a6b2OnTfmgBJV1LYs8KKJDahGmHicwTy5Zo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 spf=pass  smtp.mailfrom=tyler@shetrompf.com;
 dmarc=pass header.from=<tyler@shetrompf.com> header.from=<tyler@shetrompf.com>
Received: from archlinux.localdomain
 (50-232-53-226-static.hfc.comcastbusiness.net [50.232.53.226]) by
 mx.zohomail.com with SMTPS id 1591819172538462.68323652810307;
 Wed, 10 Jun 2020 12:59:32 -0700 (PDT)
Date: Wed, 10 Jun 2020 19:59:23 +0000
From: Tyler Shetrompf <tyler@shetrompf.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: comedi: comedi_fops: fixed a blank line coding
 style issue
Message-ID: <20200610195923.GA12602@archlinux.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue.

Signed-off-by: Tyler Shetrompf <tyler@shetrompf.com>
---
 drivers/staging/comedi/comedi_fops.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index e85a99b68f31..3f70e5dfac39 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2169,6 +2169,7 @@ static long comedi_unlocked_ioctl(struct file *file, unsigned int cmd,
 		break;
 	case COMEDI_CHANINFO: {
 		struct comedi_chaninfo it;
+
 		if (copy_from_user(&it, (void __user *)arg, sizeof(it)))
 			rc = -EFAULT;
 		else
@@ -2177,6 +2178,7 @@ static long comedi_unlocked_ioctl(struct file *file, unsigned int cmd,
 	}
 	case COMEDI_RANGEINFO: {
 		struct comedi_rangeinfo it;
+
 		if (copy_from_user(&it, (void __user *)arg, sizeof(it)))
 			rc = -EFAULT;
 		else
@@ -2249,6 +2251,7 @@ static long comedi_unlocked_ioctl(struct file *file, unsigned int cmd,
 	}
 	case COMEDI_INSN: {
 		struct comedi_insn insn;
+
 		if (copy_from_user(&insn, (void __user *)arg, sizeof(insn)))
 			rc = -EFAULT;
 		else
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
