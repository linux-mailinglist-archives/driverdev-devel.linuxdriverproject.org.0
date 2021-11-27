Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C104F45FE5D
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Nov 2021 12:57:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3363981ADE;
	Sat, 27 Nov 2021 11:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6DuhBNBah_oe; Sat, 27 Nov 2021 11:57:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BA9881985;
	Sat, 27 Nov 2021 11:57:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 00A971BF30D
 for <devel@linuxdriverproject.org>; Sat, 27 Nov 2021 11:57:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E93E440194
 for <devel@linuxdriverproject.org>; Sat, 27 Nov 2021 11:57:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6HhnsGfBDR5 for <devel@linuxdriverproject.org>;
 Sat, 27 Nov 2021 11:57:24 +0000 (UTC)
X-Greylist: delayed 02:00:05 by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9C1D040010
 for <devel@driverdev.osuosl.org>; Sat, 27 Nov 2021 11:57:24 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3DE0160B12;
 Sat, 27 Nov 2021 11:57:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E25EC53FBF;
 Sat, 27 Nov 2021 11:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1638014242;
 bh=Ko1QtQ0OqfsU7fFMFtUvOMfpUAeGSBm+kBgl0aOfRDA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=gKdlinxWa74NPLtLSxIVA5/T4vmkrf2O9gC9O5XoevDQmR70YnYaV72XEEbvPmA6c
 +LYRcZKhMx5mN6ujHsqAWlT1Ps+4v/H1kXuc5QaVrTE+9iIXSIkHn2U+iqYugXBPFX
 R8vdunhjnljWGqGYuZ3bEgc2RlNl7+zdsgcM4W4I=
Subject: Patch "staging: ion: Prevent incorrect reference counting behavour"
 has been added to the 4.4-stable tree
To: arve@android.com, dan.carpenter@oracle.com, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, labbott@redhat.com, lee.jones@linaro.org,
 riandrews@android.com, sumit.semwal@linaro.org
From: <gregkh@linuxfoundation.org>
Date: Sat, 27 Nov 2021 12:57:20 +0100
In-Reply-To: <20211126103335.880816-1-lee.jones@linaro.org>
Message-ID: <163801424092239@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


This is a note to let you know that I've just added the patch titled

    staging: ion: Prevent incorrect reference counting behavour

to the 4.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     staging-ion-prevent-incorrect-reference-counting-behavour.patch
and it can be found in the queue-4.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From lee.jones@linaro.org  Sat Nov 27 12:56:17 2021
From: Lee Jones <lee.jones@linaro.org>
Date: Fri, 26 Nov 2021 10:33:35 +0000
Subject: staging: ion: Prevent incorrect reference counting behavour
To: lee.jones@linaro.org
Cc: devel@driverdev.osuosl.org, arve@android.com, stable@vger.kernel.org, riandrews@android.com, labbott@redhat.com, sumit.semwal@linaro.org, Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20211126103335.880816-1-lee.jones@linaro.org>

From: Lee Jones <lee.jones@linaro.org>

Supply additional checks in order to prevent unexpected results.

Fixes: b892bf75b2034 ("ion: Switch ion to use dma-buf")
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 drivers/staging/android/ion/ion.c |    6 ++++++
 1 file changed, 6 insertions(+)

--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -606,6 +606,9 @@ static void *ion_buffer_kmap_get(struct
 	void *vaddr;
 
 	if (buffer->kmap_cnt) {
+		if (buffer->kmap_cnt == INT_MAX)
+			return ERR_PTR(-EOVERFLOW);
+
 		buffer->kmap_cnt++;
 		return buffer->vaddr;
 	}
@@ -626,6 +629,9 @@ static void *ion_handle_kmap_get(struct
 	void *vaddr;
 
 	if (handle->kmap_cnt) {
+		if (handle->kmap_cnt == INT_MAX)
+			return ERR_PTR(-EOVERFLOW);
+
 		handle->kmap_cnt++;
 		return buffer->vaddr;
 	}


Patches currently in stable-queue which might be from lee.jones@linaro.org are

queue-4.4/staging-ion-prevent-incorrect-reference-counting-behavour.patch
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
