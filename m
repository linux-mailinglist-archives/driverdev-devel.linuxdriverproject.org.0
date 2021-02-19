Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FB731FBA1
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 16:05:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2095A86B68;
	Fri, 19 Feb 2021 15:05:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EYazixwZ2lFh; Fri, 19 Feb 2021 15:05:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 527BC86C32;
	Fri, 19 Feb 2021 15:05:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF03D1BF3C1
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 15:05:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CBEB187079
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 15:05:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OAtk+BrHR5pg for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 15:05:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 87E1887031
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 15:05:35 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id w18so363839plc.12
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 07:05:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u5F72tWqz3dbWWau6aSsgoog6J6+mBzVvjp77XY1zTQ=;
 b=KT568zTXOlwtoknK84klgrKyS1tI5NXi2M55IdpqW4mJxy5ccQ2VMr1NbirH9YQcA6
 OQkrVX6z04TETIof3KEW0lxy2pFNIKIEO6SckLhL9v8i8+yC8lWPCtIRJFEvK4aFDSG9
 M2bWkLD74ZVdDvRSCO6DTSPtoUn9VR4pcQ0S90Ok31m+AxvTXVjp3ihET5V7i6f4nQOu
 9/+b1JY6kQkr6SKIOkG1XUeSLM06t8yFNZpRL4kMyAIQIbBVKT5N4f/wU2375C0xDBDO
 GZzuCg1GRqVvthOBOpd7pf4Fe8jMzdfwG8cT21DsH4zydwU35MyoYSi8gKlf7mfF+whh
 Xqow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u5F72tWqz3dbWWau6aSsgoog6J6+mBzVvjp77XY1zTQ=;
 b=Nwoz/qpQzHRkko4UHCEnysV6NkqvJuFXAeBfLSsv4ryVLK4z6Qw7hmGIlysV5j29gV
 CNcoeNWWvvtd3owBzH/pWtDWbpf9QP9sMrSD7YF9eU1TN4eFqzciEj8GzAbbMX2DkqQQ
 8FqGOePf5xTEnhklN23JB9s4UY3JoR3Z6vHAtZw2m6zlupdYlS19t8kvVxmkPHqWJJF4
 djevAGUUYVLV/4H1drT2pZwZl3DrSritEvJvyevW5py3jli4oAZH+nUkLWX8jlv7B4BT
 8/CdCcMpUBb7DCOKOFDIzTpR+J/G4hRH6ZSs2vgAFajWT+sbpRQWf7yz3N1DS8U7goKz
 p44A==
X-Gm-Message-State: AOAM530/4M5C+NuO9EfE8lZUall7WBK2/r3WJUH9XgFWZ1jOm40+oNOB
 qHOvxWRwCl+QC+uOIQj5GxQ=
X-Google-Smtp-Source: ABdhPJxpu9YEJNXo25ycIpKPCqYJSuUJW1Q71bzTSrPFgk/VcNKWnF+kgnKpI81llefi6VBU80VctQ==
X-Received: by 2002:a17:90a:fb87:: with SMTP id
 cp7mr9657916pjb.121.1613747135083; 
 Fri, 19 Feb 2021 07:05:35 -0800 (PST)
Received: from ThinkCentre-M83.wg.ducheng.me ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id b15sm5635956pgg.85.2021.02.19.07.05.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 07:05:34 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v5 2/2] staging: rtl8192u: remove unnecessary return in
 r8190_rtl8256.c
Date: Fri, 19 Feb 2021 23:05:27 +0800
Message-Id: <20210219150527.8358-2-ducheng2@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210219150527.8358-1-ducheng2@gmail.com>
References: <20210219150527.8358-1-ducheng2@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Du Cheng <ducheng2@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove the unnecessary return at the end of function
phy_set_rf8256_ofdm_tx_power(), reported by scripts/checkpatch.pl.

Signed-off-by: Du Cheng <ducheng2@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index 3e6bd6caf9da..54747fda552f 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -291,5 +291,4 @@ void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
 		}
 		rtl8192_setBBreg(dev, RegOffset[index], 0x7f7f7f7f, writeVal);
 	}
-	return;
 }
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
