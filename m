Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EC8A4318
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 09:32:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4044B893D6;
	Sat, 31 Aug 2019 07:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zB6jYqIZYkn7; Sat, 31 Aug 2019 07:32:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C075E88757;
	Sat, 31 Aug 2019 07:32:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30B2B1BF267
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 07:32:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2DD9D8929B
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 07:32:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RC4Pp304JFt6 for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 07:32:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C5B0D88757
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 07:32:39 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id n9so4678296pgc.1
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 00:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=4xeK59h0dqCDcu/8tG2EqDqz6mbyedjvxBCh7CZRZvQ=;
 b=UZ79Hi/R760hKF/v9HJQR4DXHYNs5Z8azbjqxFeLlLuQhNSFkXEOoR4lKhFNp40MOt
 kfWD/QjgyedpmYbkQEpu/7vVpXYf4sTzTbKxPpRy/vwUA2Jamu1JYHa6mnsby/V2NVOM
 aZHIIRTao9Mr8LHsk29ppnTh1TMQZPdJZtprI4rvqo1iKjj35MhN8HNPeRcARG8b72tH
 oM/0VGoER74bg9tN4si0amvbui5pPMi/TL7xhkx4T+Yu1HjMFDeXohBXHQTm7t31c/o/
 sKPANOj+M1tiAr3TqdZoAvEvDsl3h6PAhZ6W7bsrYZv8nfkDZoyvMyALKrXU7f/u9don
 +aVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=4xeK59h0dqCDcu/8tG2EqDqz6mbyedjvxBCh7CZRZvQ=;
 b=UokJZj3FUwfunuUiDu+8B8i0h4sFPmNhGWsHe3JpZXGipQErmVqBxVHPjaiDII4gc8
 lZdc8dKwNxj7AykYIfrs4oiJC8nhcHtHPAHjFFDZ3Da6dsHNvb70AGTeOFf4Ai7JOkrR
 s39WTKI093f7fWviLfIcWVoSEh4VKhQRL63qhR3F2CEtUQCgOQQkjnUpr+PR5pC7x19v
 hiiNgShhJRhZPZJ/OlLIy9ySXC/0Uw/fH1eCgQLIxPUr8KZHvph4dJbWEl2SLBDv/iVm
 MzKCTfaqj+alzbCRuDbjJJHtugf3Ik6ULLUVSW+NYJq6NeMwpMgjPCR5q/ZtA7l+zs1Z
 zQpA==
X-Gm-Message-State: APjAAAW+4qppm+DlgdwsjwbJFXRpPpKarwMK5qvS7oatJ4Y6U6VDQ8Sg
 n4+0Jet56bF/mFKchgnE3P8=
X-Google-Smtp-Source: APXvYqwA3BKO6wzDlauVQwkzCt4StF88WSRKsYSj3W4wWU5sP2nmxNeTgT2dENm5rRfTf+IYeyDj7A==
X-Received: by 2002:a63:6c02:: with SMTP id h2mr17043219pgc.61.1567236759334; 
 Sat, 31 Aug 2019 00:32:39 -0700 (PDT)
Received: from dell-inspiron ([117.220.112.196])
 by smtp.gmail.com with ESMTPSA id e6sm21247686pfl.37.2019.08.31.00.32.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 31 Aug 2019 00:32:38 -0700 (PDT)
Date: Sat, 31 Aug 2019 13:02:24 +0530
From: P SAI PRASANTH <saip2823@gmail.com>
To: gregkh@linuxfoundation.org, sabrina-gaube@web.de, qader.aymen@gmail.com,
 tobias.niessen@stud.uni-hannover.de, kim.jamie.bradley@gmail.com
Subject: [PATCH] staging: rts5208: Fix checkpath warning
Message-ID: <20190831073224.GA6197@dell-inspiron>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

This patch fixes the following checkpath warning
in file drivers/staging/rts5208/xd.c:1754

WARNING: line over 80 characters
+                                           index, offset, DMA_TO_DEVICE,
chip->xd_timeout);

Signed-off-by: P SAI PRASANTH <saip2823@gmail.com>
---
 drivers/staging/rts5208/xd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index f3dc96a..e62eee3 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -1751,7 +1751,8 @@ static int xd_write_multiple_pages(struct rtsx_chip *chip, u32 old_blk,
 
 	retval = rtsx_transfer_data_partial(chip, XD_CARD, buf, page_cnt * 512,
 					    scsi_sg_count(chip->srb),
-					    index, offset, DMA_TO_DEVICE, chip->xd_timeout);
+					    index, offset,
+					    DMA_TO_DEVICE, chip->xd_timeout);
 	if (retval < 0) {
 		rtsx_clear_xd_error(chip);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
