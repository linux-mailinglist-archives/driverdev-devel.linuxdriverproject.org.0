Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8575A315DDD
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 04:39:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD9966F5A9
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 03:39:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zKpGKUDF1rjM for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 03:39:04 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 1F75B6F571; Wed, 10 Feb 2021 03:39:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB6E56F4FE;
	Wed, 10 Feb 2021 03:38:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 18C051BF973
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 03:38:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 149FA867AE
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 03:38:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7xd8C+tUJsPe for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 03:38:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
 [209.85.219.46])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CD0F786750
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 03:38:37 +0000 (UTC)
Received: by mail-qv1-f46.google.com with SMTP id 2so255192qvd.0
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 19:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wxx6520gHddGTtui10g2lNRV2REHNFb9+MjnGtYstpM=;
 b=ZfD9OoG1bVUYKDazPyVkuV1d+f/7tKIdDutOP+SbSikMj/rJ5h6nXqMqIBQE+0k961
 NJvhWHCTvS9+bTWgoOHCOysboJ6I2jhAZUEOWTg6iVEzf5PmHQZNP6eIfqg5iU7t5/F4
 Rw78B+baZVflSdEQnq1lyzmpqIWtSzmiLIKcaD58QMhReSEjDtZMls4xfGVfEnIDbHIf
 mpIol3MczS6Wi9uwCeE3N/gERWJgSxXRPaogo044jCfLchNIDze883yXEyvqS24K93Sj
 VS3QGftDeiF+QHnH8selEobKng4r2RMsZd5L7DNQWhEE3G3WhGToLFzdO9x5MJSVGO1U
 NwUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wxx6520gHddGTtui10g2lNRV2REHNFb9+MjnGtYstpM=;
 b=koF5PvmsaDDsuQMSS+mlMWS8/lCoF+A9RuwBGb4RccyeqmYSXqcKw11WeWbgmBVZNT
 kUXQP4PVyVBafL4jDTrY7eiAXghR3yD+8nEVD/9qHRvMWmj6+REFnmfiLvBcBJe2QFSX
 KmhsdSloVfpUCrHHx4kBVWGTFGqph87OUciU3twr6SXw9nq3w8xkUTYdy88v7+43/DBJ
 UYk1pg3lllS3WNYpGh5NUyeUjnIS534BToltcOiDxY8i12w46XMRTGr0OHvJqOV7FzIC
 ZVTxRN7slUB65NPZhuortgYwvyMRBPR82jbSxlU2HcGoFQA4guFf1xAASH63O4jjdBst
 AZRw==
X-Gm-Message-State: AOAM532cocf8Ct0CuJBFUuL9xiwK5t9gzZLDDtjPOsZVa3ttXNuL+eOV
 CtOJDJDsG+Cjqpi+e2YF7u4=
X-Google-Smtp-Source: ABdhPJy0orwrghiMLEHDkSxRt9uDRlSHCQLCeYVQUJSSIBqgPNXHXsSYETlskr797WFzeWspXRb6kA==
X-Received: by 2002:ad4:4e8c:: with SMTP id dy12mr963136qvb.12.1612928316652; 
 Tue, 09 Feb 2021 19:38:36 -0800 (PST)
Received: from tong-desktop.local ([2601:5c0:c200:27c6:7408:b5fb:1cd8:ad04])
 by smtp.googlemail.com with ESMTPSA id o24sm569904qtt.36.2021.02.09.19.38.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 19:38:36 -0800 (PST)
From: Tong Zhang <ztong0001@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1] media: atomisp add auto selection to prevent ce
Date: Tue,  9 Feb 2021 22:38:30 -0500
Message-Id: <20210210033830.961086-1-ztong0001@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: ztong0001@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VklERU9fQVRPTUlTUCBkZXBlbmRzIG9uIFZJREVPX1Y0TDJfU1VCREVWX0FQSSwgaWYgVklERU9f
VjRMMl9TVUJERVZfQVBJCiBpcyBub3Qgc2VsZWN0ZWQsIGl0IHdpbGwgY2F1c2UgY29tcGlsYXRp
b24gZXJyb3IKCmRyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwL3BjaS9hdG9taXNwX2NtZC5j
OjYwNzk6NDI6IGVycm9yOgog4oCYc3RydWN0IHY0bDJfc3ViZGV2X2Zo4oCZIGhhcyBubyBtZW1i
ZXIgbmFtZWQg4oCYcGFk4oCZIGF0b21pc3Bfc3ViZGV2X3NldF9mZm10CigmYXNkLT5zdWJkZXYs
IGZoLnBhZCwgVjRMMl9TVUJERVZfRk9STUFUX0FDVElWRSwKCmFkZCBhdXRvIHNlbGVjdCBWSURF
T19WNEwyX1NVQkRFVl9BUEkgaWYgVklERU9fQVRPTUlTUCBpcyBzZWxlY3RlZAoKU2lnbmVkLW9m
Zi1ieTogVG9uZyBaaGFuZyA8enRvbmcwMDAxQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdp
bmcvbWVkaWEvYXRvbWlzcC9LY29uZmlnIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9LY29uZmln
IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvS2NvbmZpZwppbmRleCAzNzU3N2JiNzI5
OTguLmMzNGVmMjhkMWViYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21p
c3AvS2NvbmZpZworKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9LY29uZmlnCkBA
IC0xNSw2ICsxNSw3IEBAIGNvbmZpZyBWSURFT19BVE9NSVNQCiAJZGVwZW5kcyBvbiBQTUlDX09Q
UkVHSU9OCiAJc2VsZWN0IElPU0ZfTUJJCiAJc2VsZWN0IFZJREVPQlVGX1ZNQUxMT0MKKwlzZWxl
Y3QgVklERU9fVjRMMl9TVUJERVZfQVBJCiAJaGVscAogCSAgU2F5IFkgaGVyZSBpZiB5b3VyIHBs
YXRmb3JtIHN1cHBvcnRzIEludGVsIEF0b20gU29DCiAJICBjYW1lcmEgaW1hZ2luZyBzdWJzeXN0
ZW0uCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
