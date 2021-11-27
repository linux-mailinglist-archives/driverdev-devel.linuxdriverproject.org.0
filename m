Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DBF45FE97
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Nov 2021 13:35:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 527E84035F;
	Sat, 27 Nov 2021 12:35:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e1GladIyQ1_u; Sat, 27 Nov 2021 12:35:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 185E64035D;
	Sat, 27 Nov 2021 12:35:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 619231BF2BB
 for <devel@linuxdriverproject.org>; Sat, 27 Nov 2021 12:35:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E5E44035D
 for <devel@linuxdriverproject.org>; Sat, 27 Nov 2021 12:35:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iDgwmHmdBLEy for <devel@linuxdriverproject.org>;
 Sat, 27 Nov 2021 12:35:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2FD204035F
 for <devel@driverdev.osuosl.org>; Sat, 27 Nov 2021 12:35:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5A8E360B74;
 Sat, 27 Nov 2021 12:35:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DE64C53FBF;
 Sat, 27 Nov 2021 12:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1638016499;
 bh=jb/ZlziW/ARZpgwcr87flKEhHIOp3WDNdhQFwQJ353Y=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=VL++J1UXCVGU62yQ1Uzt2jnTEahNtJdqDGfxPlDqJNkWxeJIWLZy/2gx0UDfnpsf4
 wp6tFNEUVkbd+Im6psYcJd/nvkAFNOrhyOdxP5Z0lmJw5qqS1NVSOq84DO9cGdSap0
 M7+df2yAF0OU9N2OnjxqGx4LsTISpquptc4z/b8Y=
Subject: Patch "staging: ion: Prevent incorrect reference counting behavour"
 has been added to the 4.9-stable tree
To: arve@android.com, dan.carpenter@oracle.com, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, labbott@redhat.com, lee.jones@linaro.org,
 riandrews@android.com, sumit.semwal@linaro.org
From: <gregkh@linuxfoundation.org>
Date: Sat, 27 Nov 2021 13:34:57 +0100
In-Reply-To: <20211126103335.880816-1-lee.jones@linaro.org>
Message-ID: <163801649718287@kroah.com>
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

to the 4.9-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     staging-ion-prevent-incorrect-reference-counting-behavour.patch
and it can be found in the queue-4.9 subdirectory.

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
@@ -489,6 +489,9 @@ static void *ion_buffer_kmap_get(struct
 	void *vaddr;
 
 	if (buffer->kmap_cnt) {
+		if (buffer->kmap_cnt == INT_MAX)
+			return ERR_PTR(-EOVERFLOW);
+
 		buffer->kmap_cnt++;
 		return buffer->vaddr;
 	}
@@ -509,6 +512,9 @@ static void *ion_handle_kmap_get(struct
 	void *vaddr;
 
 	if (handle->kmap_cnt) {
+		if (handle->kmap_cnt == INT_MAX)
+			return ERR_PTR(-EOVERFLOW);
+
 		handle->kmap_cnt++;
 		return buffer->vaddr;
 	}


Patches currently in stable-queue which might be from lee.jones@linaro.org are

queue-4.9/staging-ion-prevent-incorrect-reference-counting-behavour.patch
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
