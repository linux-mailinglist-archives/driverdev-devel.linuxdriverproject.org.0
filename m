Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A39C727D38
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:52:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3872287CB8;
	Thu, 23 May 2019 12:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eIv+LxiWIQTQ; Thu, 23 May 2019 12:52:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3DF6387CA4;
	Thu, 23 May 2019 12:52:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8861B1BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 85A3E23086
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hnuinf8CZb82 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:51:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id C8FF13138D
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:51:53 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id j24so5368987ljg.1
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vGQS4M0GPNHznQS2lsbs87t2GSHBkkows3KhdrMM+/0=;
 b=YX2nFP1S98XkOe4dzmtQv40gXL3+FkuOQj+bAhW2T7iaA6Ldf6brMJVN8LEOcpqlLO
 rJ4rCNt/WDGJPSR6Y8tZ3F5DfcoqC1/rUHXRcGP6jmmuBMQoEX9OdeJ1kOYEFf9wICa1
 QoY2Xc+L0I0gP04cDnAkA/KTUn/4m1BBqlxrsJPpQxwq/jQ3E/a+wjJa2Hz0NNz+MPEv
 /imYbQnKyEBg54nNuOMUWgliSIsbnsXNRIcaeN+UXCcnA27W2taYxyXgGvu1qpyALFhj
 BHcHbtBBtKwjQ4530rhz7mhEdwUDPyPl6wYKHstXtnngaRMjl6G5Zp89ix+frqdF1d9u
 aTFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vGQS4M0GPNHznQS2lsbs87t2GSHBkkows3KhdrMM+/0=;
 b=WCpHB7av1H8wiYKlUdyr9q8C2XnDBR+c6X1SzCkj/5kVE+/S1qP5ZTAfULGOx98tae
 n4b7bIkcO541CNVerMGTLDtuI66Yb4QLzDs7PHB1c6aEA5QeHIuREK4wfkUrEGokDqY+
 MOAGiTVxjiDyBovY7ETa4GLogn5QeN8Dv5CC3UyKMsAo+/zz+xM9KqfO/uKqd2DWiJC+
 ydChW3U9cOMTNJlsPVZMz26leeTUo7PoiJuxNG/MJdAhZjMovJlq2GO9/vnhfIUdpSR9
 zlIqdgzzDUQfWyrHvxBon4qNUfK+uVxy/GURoW2Y0U6839dTDZq7Gb/KwM4WzHNUciar
 PtoQ==
X-Gm-Message-State: APjAAAW5zKcI1Pvm65tqlDBBYGq8a8iN7IUUM6FHWFSQ2wNFcm6Obovz
 KlfpeaPMy5SggB8bOOWaqpURWQ==
X-Google-Smtp-Source: APXvYqytmvQHDdy/WQuWvI8+ZKRI5lnE9GgsvaGTz8l5yBVNdt411zwhco/I+VfZia5nnOPDq4Pk9A==
X-Received: by 2002:a2e:9cd1:: with SMTP id g17mr8738574ljj.191.1558615912139; 
 Thu, 23 May 2019 05:51:52 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id c19sm5947154lfi.69.2019.05.23.05.51.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:51:51 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 6/9] staging: kpc2000: use kzalloc(sizeof(var)...) in
 cell_probe.c
Date: Thu, 23 May 2019 14:51:40 +0200
Message-Id: <20190523125143.32511-7-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523125143.32511-1-simon@nikanor.nu>
References: <20190523125143.32511-1-simon@nikanor.nu>
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
 dan.carpenter@oracle.com, simon@nikanor.nu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJQcmVmZXIga3phbGxvYyhzaXplb2YoKmt1ZGV2
KS4uLikgb3ZlcgpremFsbG9jKHNpemVvZihzdHJ1Y3Qga3BjX3Vpb19kZXZpY2UpLi4uKSIKClNp
Z25lZC1vZmYtYnk6IFNpbW9uIFNhbmRzdHLDtm0gPHNpbW9uQG5pa2Fub3IubnU+Ci0tLQogZHJp
dmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMgfCAyICstCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYyBiL2RyaXZlcnMvc3RhZ2lu
Zy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jCmluZGV4IGY4ZDE5ZTY5M2YyMS4uY2FmNDgy
NTZhYTJlIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxf
cHJvYmUuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUu
YwpAQCAtMjkyLDcgKzI5Miw3IEBAIHN0YXRpYyBpbnQgcHJvYmVfY29yZV91aW8odW5zaWduZWQg
aW50IGNvcmVfbnVtLCBzdHJ1Y3Qga3AyMDAwX2RldmljZSAqcGNhcmQsCiAKIAlkZXZfZGJnKCZw
Y2FyZC0+cGRldi0+ZGV2LCAiRm91bmQgVUlPIGNvcmU6ICAgdHlwZSA9ICUwMmQgIGRtYSA9ICUw
MnggLyAlMDJ4ICBvZmZzZXQgPSAweCV4ICBsZW5ndGggPSAweCV4ICglZCByZWdzKVxuIiwgY3Rl
LnR5cGUsIEtQQ19PTERfUzJDX0RNQV9DSF9OVU0oY3RlKSwgS1BDX09MRF9DMlNfRE1BX0NIX05V
TShjdGUpLCBjdGUub2Zmc2V0LCBjdGUubGVuZ3RoLCBjdGUubGVuZ3RoIC8gOCk7CiAKLQlrdWRl
diA9IGt6YWxsb2Moc2l6ZW9mKHN0cnVjdCBrcGNfdWlvX2RldmljZSksIEdGUF9LRVJORUwpOwor
CWt1ZGV2ID0ga3phbGxvYyhzaXplb2YoKmt1ZGV2KSwgR0ZQX0tFUk5FTCk7CiAJaWYgKCFrdWRl
dikgewogCQlkZXZfZXJyKCZwY2FyZC0+cGRldi0+ZGV2LCAicHJvYmVfY29yZV91aW86IGZhaWxl
ZCB0byBremFsbG9jIGtwY191aW9fZGV2aWNlXG4iKTsKIAkJcmV0dXJuIC1FTk9NRU07Ci0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
