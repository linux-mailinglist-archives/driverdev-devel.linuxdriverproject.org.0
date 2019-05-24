Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADD229FE9
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 22:31:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4275C86E4E;
	Fri, 24 May 2019 20:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XwdeFbinFeI2; Fri, 24 May 2019 20:31:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3655786DCD;
	Fri, 24 May 2019 20:31:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E3F471BF5DE
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 20:31:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E186288C41
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 20:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZsNGAkOsR891 for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 20:31:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 93EF888C46
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 20:31:06 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id v18so8062980lfi.1
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 13:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dXxgezPTBmcXK6U7eT+ZniYRkjIkHyj/4qWZKolWGME=;
 b=RKKoulMjCNtwd7QRzpp70GPC02OUG/Ev38XCNd/GOE9VruKM+ZkoKkfuD/KifFk5s/
 ucZmvOzaROhccsgdk1wbE2HFpvRGvI9RWvowIkXLPuBDBR/UnyZNWb0/0U0C/SZ+b04V
 JTNd/pWyddg74CN9vAqLZGyUbySTWiGt19XcXzFnmtH0EDGNpenkxDx08OfdmDgHoUq5
 BBolsDbVu+4YClxX2rC//HO0zO7gUzyeoiJADPggF9Na0qMQp8ZTLqqf2YRzIyTQUs7P
 zTo7qnhmYPsSfjWQBnQ/CsCYchDX4eWm+9yA7x0tfG8Cc3rattXYV5Km3deWA8u5HTib
 HeKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dXxgezPTBmcXK6U7eT+ZniYRkjIkHyj/4qWZKolWGME=;
 b=PyLvGptFAxOrblKmbPrfdsVCB6Xi4Cwy5ilqJSj/awFDwZMjKHy20up4VOOj7yPejY
 opoBkqxVCByiTvypb61WyV6hR/mWZuSqqrZ1n7mVpsE9xzi80HDnuCxfWG2HvJ1kun62
 bs+NvzVdOl0s0pu8TOX2CWdNwf4do81xGtXaTiN8NaGWBZBMBi3YFtdBOGIxj1jpefJj
 myUUTI1lj7bYTM4HiXbS99UAioZHchktqt28S1bYFcSqG/W2TUWGtbuWIRiVy/lskJzk
 uRri6rp4ftd3b3GMjnlYXsI74q97gKntRKP94k0X4PzRjVLyZvQVizeFBApeLP6KYyHr
 OO/A==
X-Gm-Message-State: APjAAAWjv0GTngKd6fJCZGY/vrWhQjgwg1oea/Yu94us0BAZKHaic5Ww
 gE3eShGmThxY7B9yzpnU6UuiTg==
X-Google-Smtp-Source: APXvYqwzxomZi+ea9FMxZMee20ow0MR7W+LSI+IFkN2Zy3auBLCudMHe+NlRlo4M8MrcRwOwijdCBg==
X-Received: by 2002:a19:ca0e:: with SMTP id a14mr14823589lfg.3.1558729864890; 
 Fri, 24 May 2019 13:31:04 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id j69sm921036ljb.72.2019.05.24.13.31.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 13:31:04 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: kpc2000: fix typo in Kconfig
Date: Fri, 24 May 2019 22:30:57 +0200
Message-Id: <20190524203058.30022-2-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524203058.30022-1-simon@nikanor.nu>
References: <20190524203058.30022-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, simon@nikanor.nu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgdHdvIG1pbm9yIHR5cG9zIGluIGtwYzIwMDAncyBLY29uZmlnOiBzL0tha3Ryb25pY3Mv
RGFrdHJvbmljcwoKU2lnbmVkLW9mZi1ieTogU2ltb24gU2FuZHN0csO2bSA8c2ltb25AbmlrYW5v
ci5udT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9LY29uZmlnIHwgNCArKy0tCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL0tjb25maWcgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAw
MC9LY29uZmlnCmluZGV4IGZiNTkyMjkyOGY0Ny4uYzQ2M2QyMzJmMmI0IDEwMDY0NAotLS0gYS9k
cml2ZXJzL3N0YWdpbmcva3BjMjAwMC9LY29uZmlnCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMy
MDAwL0tjb25maWcKQEAgLTIxLDcgKzIxLDcgQEAgY29uZmlnIEtQQzIwMDBfQ09SRQogCSAgSWYg
dW5zdXJlLCBzYXkgTi4KIAogY29uZmlnIEtQQzIwMDBfU1BJCi0JdHJpc3RhdGUgIktha3Ryb25p
Y3MgS1BDIFNQSSBkZXZpY2UiCisJdHJpc3RhdGUgIkRha3Ryb25pY3MgS1BDIFNQSSBkZXZpY2Ui
CiAJZGVwZW5kcyBvbiBLUEMyMDAwICYmIFNQSQogCWhlbHAKIAkgIFNheSBZIGhlcmUgaWYgeW91
IHdpc2ggdG8gc3VwcG9ydCB0aGUgRGFrdHJvbmljcyBLUEMgUENJCkBAIC0zMyw3ICszMyw3IEBA
IGNvbmZpZyBLUEMyMDAwX1NQSQogCSAgSWYgdW5zdXJlLCBzYXkgTi4KIAogY29uZmlnIEtQQzIw
MDBfSTJDCi0JdHJpc3RhdGUgIktha3Ryb25pY3MgS1BDIEkyQyBkZXZpY2UiCisJdHJpc3RhdGUg
IkRha3Ryb25pY3MgS1BDIEkyQyBkZXZpY2UiCiAJZGVwZW5kcyBvbiBLUEMyMDAwICYmIEkyQwog
CWhlbHAKIAkgIFNheSBZIGhlcmUgaWYgeW91IHdpc2ggdG8gc3VwcG9ydCB0aGUgRGFrdHJvbmlj
cyBLUEMgUENJCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
