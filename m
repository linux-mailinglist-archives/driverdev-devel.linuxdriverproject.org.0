Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C89A22DFA7
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 16:19:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 481942155D;
	Sun, 26 Jul 2020 14:18:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VZpMxptBndI0; Sun, 26 Jul 2020 14:18:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7E6AE214E9;
	Sun, 26 Jul 2020 14:18:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F7281BF46D
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 14:18:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1BD888844C
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 14:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QiD5hQh656pe for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 14:18:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0FDC288448
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 14:18:52 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id t10so1455535plz.10
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 07:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f/P5ugQTvYO61SPrMwSZlOV5zbLJcAGZu1SsfWZekIc=;
 b=IzjanIr1aVtuaTGVFq9I4jtNZDdzHtGD7spyU4VRgb7Uu+L5ntDCdSjCeQCpnqIpV+
 n+cZttzGARjrVTwQ/lE95l0/8E2OQt+trcuCYTVuKMtmpW0TjBApVwioFWdDobWJAtKW
 WSjDL3XTxCavbAP95Za2S3nktRnh0omcr3re4AGHHxjG2a7x19d5i8UpkoFybgxImY7u
 t/nHQSFRA6f2UvT1rSsDPJ2mjKmy95y/U2IxngZSsWpeXzy4N+3PoDIw8VLnrT54jNG4
 skr0P40J/Bqd399Yo0Xe+IaSezRc7XD3bYAzwOxazm5hJK8o/R+YoyLEMQ8LAZHvVd0X
 G31Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f/P5ugQTvYO61SPrMwSZlOV5zbLJcAGZu1SsfWZekIc=;
 b=COsIdlfK4gpMmPRkEzYEagTaZXwZRbZJ/PTIakVx1Nd4C99GM6cR+ZroUzZq0RDLPg
 fq4Z1Q3F5lFseU667bMWG//JXJdEumIrMuNnrwn+QPEE0RFJbhyNqYs/RA3mTobEZw1k
 bnlh2DqJdS6O4cjPYcyoPumHXaVaESx/2jsm5tl7UBYdrl28grwUg9X6Ohk9GzlvWG3v
 yidgJiIaSyI6wNUlaj9US0IfPuqrFu4+GzZe8gFDq3xJLQ8SubQFcpsW3jGKOCaKXqW1
 QSUEDcGHC8PBgAZbnw949sgaMQuwlj3vh5QO35zAyWAsQY5IsuFc3Tt3PXySJxuAtNrD
 58PQ==
X-Gm-Message-State: AOAM5303UoAtPlK2KS9pbMPg5NWuwAh1hLDLuO1zK1gt6EcNjj4QjC/S
 A8EXsz/4VJ/E0B1CgApD4tg=
X-Google-Smtp-Source: ABdhPJx/0Mgm9FWkZU4nZ97I/recHI8SwOqM4b3at07+amCPenBe+kmwbQQNc16u3NZcKQYqxAV0Lg==
X-Received: by 2002:a17:902:968a:: with SMTP id
 n10mr15727676plp.67.1595773131465; 
 Sun, 26 Jul 2020 07:18:51 -0700 (PDT)
Received: from localhost.localdomain ([122.167.86.75])
 by smtp.googlemail.com with ESMTPSA id
 y198sm11873072pfg.116.2020.07.26.07.18.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 07:18:50 -0700 (PDT)
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
To: gregkh@linuxfoundation.org
Subject: Fix code style issues in staging
Date: Sun, 26 Jul 2020 19:48:27 +0530
Message-Id: <20200726141831.2662-1-aditya.jainadityajain.jain@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
References: <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

The following series of patches fixes code style issues in 
the file staging/drivers/rtl8723bs/include/hal_phy_cfg.h

Regards,
Aditya Jain

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
