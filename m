Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30096249C25
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 13:46:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A89E087527;
	Wed, 19 Aug 2020 11:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CNq4aEubS7C0; Wed, 19 Aug 2020 11:46:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 44930870A9;
	Wed, 19 Aug 2020 11:46:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8ACE71BF30D
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8806C8666C
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19mcyf-0YiCv for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 11:46:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB013866A3
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 11:46:23 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CBE322D06;
 Wed, 19 Aug 2020 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597837582;
 bh=1sNGLXo9ZA3HXNAzNStAdZUhW9U41Rh3Ah+qraORED8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tsJsLql88Y/1AEn2ZXDiOpKhDnxy6ZK1VvV9RNezYwJlTCwxvdyuNHSwe6Z0G/iET
 DmxS4UKEtSqcUTrzBgTXmUIoHrbM9MgEJ/LlUTxq/1TI9HWjHzd41OFEj7Z+clnzqd
 2W2rQKu5MVjOmSkfS7W6QIzugan/dlj3Aib7Aflk=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k8MXs-00Eub5-DV; Wed, 19 Aug 2020 13:46:20 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 26/49] staging: hikey9xx/gpu: use default GEM_CMA fops
Date: Wed, 19 Aug 2020 13:45:54 +0200
Message-Id: <3defe6018773d9882fdf7daf70806cd23ca02cbd.1597833138.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597833138.git.mchehab+huawei@kernel.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Liwei Cai <cailiwei@hisilicon.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Chen Feng <puck.chen@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, John Stultz <john.stultz@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, mauro.chehab@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Instead of implementing it at the code, use the default
methods from CMA helper

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c
index cede6ccc2dd5..44f7c15f386a 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c
@@ -141,19 +141,7 @@ static int kirin_drm_kms_init(struct drm_device *dev)
 	return ret;
 }
 
-static const struct file_operations kirin_drm_fops = {
-	.owner		= THIS_MODULE,
-	.open		= drm_open,
-	.release	= drm_release,
-	.unlocked_ioctl	= drm_ioctl,
-#ifdef CONFIG_COMPAT
-	.compat_ioctl	= drm_compat_ioctl,
-#endif
-	.poll		= drm_poll,
-	.read		= drm_read,
-	.llseek		= no_llseek,
-	.mmap		= drm_gem_cma_mmap,
-};
+DEFINE_DRM_GEM_CMA_FOPS(kirin_drm_fops);
 
 static int kirin_gem_cma_dumb_create(struct drm_file *file,
 				     struct drm_device *dev,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
