Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D13C114D00
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Dec 2019 08:55:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BA48882B5;
	Fri,  6 Dec 2019 07:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yelGlekrvJMa; Fri,  6 Dec 2019 07:55:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C72028825E;
	Fri,  6 Dec 2019 07:55:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F1B011BF328
 for <devel@linuxdriverproject.org>; Fri,  6 Dec 2019 07:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E72C887D95
 for <devel@linuxdriverproject.org>; Fri,  6 Dec 2019 07:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EUc4h7Wbj0C3 for <devel@linuxdriverproject.org>;
 Fri,  6 Dec 2019 07:55:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6D9968825E
 for <devel@driverdev.osuosl.org>; Fri,  6 Dec 2019 07:55:24 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id s35so2399539pjb.7
 for <devel@driverdev.osuosl.org>; Thu, 05 Dec 2019 23:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QaqU4ZZ/Urt5R21/nikc8rCEF6ts1fVjkR26xtBAyOA=;
 b=jjadsDBNPS8OtHRSPNn6QtxEfvQBzpDZDLfkKU2DTOIaMvf03RP/kOkQ/D/LbYSgyH
 x5nkPApqMZdMlAjPyQR/bXrWy1RRhxm3NGXvYJ5bjtMpV5bWtBOQA11CO1JLwESZN33v
 ukIFxIOwWS7ZNyuIoSm7ELAPv4vFhGTDCHYeNNqHhRRmE5gEQyC7TU6BuGoRsI7Yj0HM
 fncxDwvOewPurjd9a9E/A5kvOqzcme2NE/UPAwWFXbTvLz76qcbT0smbhefAHssfpSuf
 LdI4h6HDmcvhWxYvGT0R+O9hvLozpSpvi7LZMc0dRePOQRR6QOqjuGBcGmIRrDv5p1Il
 odSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QaqU4ZZ/Urt5R21/nikc8rCEF6ts1fVjkR26xtBAyOA=;
 b=YHKNpj5uTRMkShL/fVSmH7TrqrztqBDJWf50nXNemHmhd9gX8bFBsxe8GCtXj+/SpL
 U3032tivTfSMjsKWe8siG27I7heMAdsauBeFSexA84r48fVoFC0qs64bZx4riRhhIb37
 6GxPAiYOom38hUK7Rd3eAQSvxQmSBQiyBGmulPZaH7NhhndCYQIg8Rds+62x/8a+7wD3
 LqCBvj+rcHNmlc8/lhm2Z/dpx6fKLaq2mVJXbXoYhHkkttGS0pkoL4X8M27rrNBHh0d0
 bA15nV1r+4mruMgMufWDpTlyrpxsJZOYmJhyLh9i06perH7Ts0G1sffpStiFwge1r+Vb
 SQUw==
X-Gm-Message-State: APjAAAV7q9VSgLD5lTBtpY/VGq4uGubl+EQJ31qD1YuxRfl7ysmY4pEV
 yIktyGbF3GjJCZG6mUbB1co=
X-Google-Smtp-Source: APXvYqzgg7fH/uj3wNC9qxJt7g/rdmxrFIo8YiaT1FrtCXHCjuwNzj4iChssf7KJ7/vc+FGiKEjkpA==
X-Received: by 2002:a17:902:ba8e:: with SMTP id
 k14mr9867579pls.335.1575618924028; 
 Thu, 05 Dec 2019 23:55:24 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id u2sm13894922pgc.19.2019.12.05.23.55.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 23:55:23 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] staging: rts5208: add missed pci_release_regions
Date: Fri,  6 Dec 2019 15:55:15 +0800
Message-Id: <20191206075515.18581-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The driver forgets to call pci_release_regions() in probe failure
and remove.
Add the missed calls to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/staging/rts5208/rtsx.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index cb95ad6fa4f9..15fc96b42032 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -831,7 +831,8 @@ static int rtsx_probe(struct pci_dev *pci,
 	host = scsi_host_alloc(&rtsx_host_template, sizeof(*dev));
 	if (!host) {
 		dev_err(&pci->dev, "Unable to allocate the scsi host\n");
-		return -ENOMEM;
+		err = -ENOMEM;
+		goto scsi_host_alloc_fail;
 	}
 
 	dev = host_to_rtsx(host);
@@ -971,7 +972,8 @@ static int rtsx_probe(struct pci_dev *pci,
 	kfree(dev->chip);
 chip_alloc_fail:
 	dev_err(&pci->dev, "%s failed\n", __func__);
-
+scsi_host_alloc_fail:
+	pci_release_regions(pci);
 	return err;
 }
 
@@ -983,6 +985,7 @@ static void rtsx_remove(struct pci_dev *pci)
 
 	quiesce_and_remove_host(dev);
 	release_everything(dev);
+	pci_release_regions(pci);
 }
 
 /* PCI IDs */
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
