Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F072A1C525C
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 12:00:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3908E878D2;
	Tue,  5 May 2020 10:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v9iycjxhT1GV; Tue,  5 May 2020 10:00:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A01987893;
	Tue,  5 May 2020 10:00:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BFD391BF2E4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BC12787850
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YtWbG8N00Zp5
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 407988784F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588672834; x=1620208834;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=vPYkxB6oWk0BOSYfuo8oanOC/feE4v49wJfNN9xn67Y=;
 b=sncuDxQHsaQLX2p2hXmmPXZMhlVxyWsfrZ2oU3gyTOJ9i9ykF8WIadnv
 GPzhIto7iDh5+dvN7tMvMVUeALY5+1Q5e+d0jSnRqrRawwk1Fco0PM3GI
 udS5pH2C9wuM5Wdw6cEV0Z+dLcB0mTA4wxMAwBl7GgE/73fPe39/SfGSs
 Ke8REqvaCabtD/GxwW2uju/VvC05cDMZIBAmHw1gzGGtQ8aYwgpWG9uYH
 uKSU+1SYWuExkOevXSOmKgwvd7kCrnN9xgjeQzbuqA7IYALvn2Q/LFwMF
 vvlIH+MHsrZ/37GNMxlRA4PAih7D0JltmkSgdD1aOxmfXl3jQ1AhpPbaz Q==;
IronPort-SDR: C0YVOlSWRtVIw/JA7ONmh8PYYFuEXHIihpIgp5gvalsi1Z4D4HHdUBD/B/R4/jQgoW9s0gH9EU
 CuKSeNxKcaDGzX8060yN/ze/0Iu0UGgqyd1glLSlNNzmS0Y+81W+mhP9o+yQ921NmogFdzeIZ2
 7KDGQ+yAuRB1sLKLCNuwayf9JxXypMzk6EkiPpjI5KfxVCTrf3xK9y2gIJVYlgdz7MXCmzyxhj
 f8Mog7WBuqCz8ddMaSSb7JEIIoTTaCgdFKJU7oqiZPwXkBq0+FuXbbTMFFfUHppCRz6lZihwTy
 6Vo=
X-IronPort-AV: E=Sophos;i="5.73,354,1583218800"; d="scan'208";a="74250517"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 May 2020 03:00:33 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 May 2020 03:00:34 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 5 May 2020 03:00:32 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 0/4] staging: most: usb: cleanup code
Date: Tue, 5 May 2020 12:00:25 +0200
Message-ID: <1588672829-28883-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch set consolidates the source code appearance by rearranging or
removing unnecessary code and makes use of error codes that better signal
the exception.

Christian Gromm (4):
  staging: most: usb: remove overcautious parameter checking
  staging: most: usb: use EINVAL error code
  staging: most: usb: drop unlikely macros
  staging: most: usb: consolidate code

 drivers/staging/most/usb/usb.c | 33 +++++++++++++--------------------
 1 file changed, 13 insertions(+), 20 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
