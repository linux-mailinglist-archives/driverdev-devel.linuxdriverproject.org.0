Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A74C9E5A
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 14:25:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B14F186910;
	Thu,  3 Oct 2019 12:25:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9WSgDvhe74si; Thu,  3 Oct 2019 12:25:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 96B068648E;
	Thu,  3 Oct 2019 12:25:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F6B91BF9B6
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 12:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9441620512
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 12:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J35FWiKzurIB for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 12:25:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 2720A2076F
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 12:25:35 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id z9so2657635wrl.11
 for <devel@driverdev.osuosl.org>; Thu, 03 Oct 2019 05:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kV9zD3uPi2Di+JDBMvIhoGzUBhhzE8EsX3G3Pd160Mg=;
 b=V8DW/BVJzXo83wv+ti+YBzIQbU/EjZU8jXLzTaUOimwwfAdnB7yMfiY/2u0Zp/8J/n
 OO9VWqoqqFB9/uPCgkJ//TsbKC88/NPnTEiITwUP4dWbSYYolhylZude1ZhxhAiZnrWX
 wUqNUhmmlcnNSqW03PI2RVjA/dDT+Dcv8sbu3+L1S7H6TFwzotYP2kLef2ETDL43Tb9L
 pKGRQ53KW3YOs0KbfMZpgTb4paCq87eCwcMq9pBAtB0CX54YoZ11cEczGui/XnGRDxu4
 bdhsxCl3fl3a9D6BHElIEnCm66/7Y3iB4spRPBd/PESr+4XPpiyDAMUUEWSZH9TMJsVF
 8/PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kV9zD3uPi2Di+JDBMvIhoGzUBhhzE8EsX3G3Pd160Mg=;
 b=JPfKzBAoQnbOtZHPaZv+sXsOnzST8mUATO0fB9TkRMasHCygh63zjA8hfaS6UJM8b0
 GT2dXyJlU1U87uWVXjD9yJ+grGLp82VmFJHKDacOZaoyeahPJYoZnnQ4HPyzXU5Rpha2
 m+Ubg6hM1mYDxVUmHPS9/UZyruOPbcEqgsF6DoSviGPH6LZ54e+dUQVoZS0NOCddRA2Q
 2P20CciHSP4AjTVH/oN/EEjnaz/SNENZVS8qgZC7ATRP/zYKnP+2LBnyMmCLs/PfPt78
 WIEd2SAAhv9JsrKUtvsKr23qUEUQsahaROlrbixYpt88Pj3cYXhR4jk2kJ0fwLm5h7PF
 O9Mg==
X-Gm-Message-State: APjAAAVIGJ0urLunKPPq4SPqekCbRn1Wz6iqpeiNUP3MRCe0AN8OcodV
 llChBUboHwJjyWiXRb/Hfxw=
X-Google-Smtp-Source: APXvYqyI7O5U6bzRp+8a31fdCe0kFkw+s+Pm1GROZezzzHsmTS6VCjKEMIo458h06THaxOS6yJNOng==
X-Received: by 2002:a5d:42cb:: with SMTP id t11mr6541793wrr.99.1570105533510; 
 Thu, 03 Oct 2019 05:25:33 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id f17sm2699322wru.29.2019.10.03.05.25.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 05:25:33 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/4] staging: rtl8188eu: cleanups in update_hw_ht_param()
Date: Thu,  3 Oct 2019 14:25:10 +0200
Message-Id: <20191003122514.1760-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup code in function update_hw_ht_param(). 

Michael Straube (4):
  staging: rtl8188eu: convert variables from unsigned char to u8
  staging: rtl8188eu: rename variables to avoid mixed case
  staging: rtl8188eu: cleanup whitespace in update_hw_ht_param
  staging: rtl8188eu: cleanup comments in update_hw_ht_param

 drivers/staging/rtl8188eu/core/rtw_ap.c | 31 +++++++++++--------------
 1 file changed, 13 insertions(+), 18 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
