Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1A227D37
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:52:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B4B4883F8;
	Thu, 23 May 2019 12:51:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6KVg90-S6hYF; Thu, 23 May 2019 12:51:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E846685F8E;
	Thu, 23 May 2019 12:51:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 17C081BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 12DB73138D
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WKUj1fdAP1vE for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:51:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 039B33137E
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:51:49 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id w1so5383933ljw.0
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WaaInSZ/8FR2reHnDUn1kcD6WX/fXP/+clwh+fO1tAQ=;
 b=HN68Q3EVQZhJbkZThtdPhltW9YfxgYN5sV+4a7aKumDdVvFz1CzCwxgRl0JHnCfp5B
 ht7YabU+8ofwfTU3i5NCuaeAurTHZoHtE5M66Jqz66MWlInRIhDlpajOQVZZYEYagSaX
 9gj0gERXnkjrrUV6qeULqu2GYW3ZHLOzQOtUMEqwvqF3Kgs3V+sZ8dWPTvrcJgdyknky
 a4vIUH6jjj3372GsoCQh4BKqDaBnux5iTI+1N2P4/kAPzdEtyHX2nFLaU12147ebdDfw
 l0WZiF+cLO1VJkoCB0NElBLL1mGjRux4amiJbec+ajjHsFpGUtzTaxmyQSt8LSfyAqUQ
 TwmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WaaInSZ/8FR2reHnDUn1kcD6WX/fXP/+clwh+fO1tAQ=;
 b=GsOMK1B+98CSimX/4sPskFBMmf1mqFQWwSryATILU42GT6pw1m/adHNE9oZ8aE7PNs
 NFqhYOqiO7gSaGXRiKiUxZVp+AnQdkzLvEmBn/BacENDN6M/xCC5EHkrQvB2y9lfkpd1
 yVoE8yjzPoOMVgbzN4culYOyd+JxUoNceImO1UGUq53hx6jKfvPOVI/wlAdWeoGSqTiZ
 S8wIfc5GflEOcCZjMfygggp8Zr4XE/8puUkjvzve769dbZepQZT0XDuaYRdKX1DNeToZ
 PvLS9U41EyUIHhPuBUXOcMRowp5kqc2QxMnMyGqpThXY1Z5iruddDDQqCmduJe631yRz
 hc6A==
X-Gm-Message-State: APjAAAU40FSgobEYSxYO8Y1phxhqYCBTtI2b3te46cyC3hOf3dPtA/NC
 XLNXNfPcTG4o6lzGcl656eD6/A==
X-Google-Smtp-Source: APXvYqwwDdOf6xI+YV3fdp0081pb426NkWEs8zvOFG/hz0kcmI7ogEtPNQtz4h6uyHQTaFpBYVdOIg==
X-Received: by 2002:a2e:5d49:: with SMTP id r70mr51228511ljb.102.1558615907367; 
 Thu, 23 May 2019 05:51:47 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id c19sm5947154lfi.69.2019.05.23.05.51.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:51:46 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/9] staging: kpc2000: add blank line after declarations
Date: Thu, 23 May 2019 14:51:35 +0200
Message-Id: <20190523125143.32511-2-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJNaXNzaW5nIGEgYmxhbmsgbGluZSBhZnRlciBk
ZWNsYXJhdGlvbnMiLgoKU2lnbmVkLW9mZi1ieTogU2ltb24gU2FuZHN0csO2bSA8c2ltb25Abmlr
YW5vci5udT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUu
YyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jIGIvZHJpdmVycy9z
dGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKaW5kZXggZTVjZGRmMGVlZWQzLi45
NWJmYmU0YWFlNGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAv
Y2VsbF9wcm9iZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9w
cm9iZS5jCkBAIC0yNDUsNiArMjQ1LDcgQEAgaW50ICBrcDIwMDBfY2hlY2tfdWlvX2lycShzdHJ1
Y3Qga3AyMDAwX2RldmljZSAqcGNhcmQsIHUzMiBpcnFfbnVtKQogCXU2NCBpbnRlcnJ1cHRfYWN0
aXZlICAgPSAgcmVhZHEocGNhcmQtPnN5c2luZm9fcmVnc19iYXNlICsgUkVHX0lOVEVSUlVQVF9B
Q1RJVkUpOwogCXU2NCBpbnRlcnJ1cHRfbWFza19pbnYgPSB+cmVhZHEocGNhcmQtPnN5c2luZm9f
cmVnc19iYXNlICsgUkVHX0lOVEVSUlVQVF9NQVNLKTsKIAl1NjQgaXJxX2NoZWNrX21hc2sgPSAo
MSA8PCBpcnFfbnVtKTsKKwogCWlmIChpbnRlcnJ1cHRfYWN0aXZlICYgaXJxX2NoZWNrX21hc2sp
IHsgLy8gaWYgaXQncyBhY3RpdmUgKGludGVycnVwdCBwZW5kaW5nKQogCQlpZiAoaW50ZXJydXB0
X21hc2tfaW52ICYgaXJxX2NoZWNrX21hc2spIHsgICAgLy8gYW5kIGlmIGl0J3Mgbm90IG1hc2tl
ZCBvZmYKIAkJCXJldHVybiAxOwpAQCAtMjU3LDYgKzI1OCw3IEBAIHN0YXRpYwogaXJxcmV0dXJu
X3QgIGt1aW9faGFuZGxlcihpbnQgaXJxLCBzdHJ1Y3QgdWlvX2luZm8gKnVpb2luZm8pCiB7CiAJ
c3RydWN0IGtwY191aW9fZGV2aWNlICprdWRldiA9IHVpb2luZm8tPnByaXY7CisKIAlpZiAoaXJx
ICE9IGt1ZGV2LT5wY2FyZC0+cGRldi0+aXJxKQogCQlyZXR1cm4gSVJRX05PTkU7CiAKQEAgLTUw
Niw4ICs1MDgsMTAgQEAgdm9pZCAga3AyMDAwX3JlbW92ZV9jb3JlcyhzdHJ1Y3Qga3AyMDAwX2Rl
dmljZSAqcGNhcmQpCiB7CiAJc3RydWN0IGxpc3RfaGVhZCAqcHRyOwogCXN0cnVjdCBsaXN0X2hl
YWQgKm5leHQ7CisKIAlsaXN0X2Zvcl9lYWNoX3NhZmUocHRyLCBuZXh0LCAmcGNhcmQtPnVpb19k
ZXZpY2VzX2xpc3QpIHsKIAkJc3RydWN0IGtwY191aW9fZGV2aWNlICprdWRldiA9IGxpc3RfZW50
cnkocHRyLCBzdHJ1Y3Qga3BjX3Vpb19kZXZpY2UsIGxpc3QpOworCiAJCXVpb191bnJlZ2lzdGVy
X2RldmljZSgma3VkZXYtPnVpb2luZm8pOwogCQlkZXZpY2VfdW5yZWdpc3RlcihrdWRldi0+ZGV2
KTsKIAkJbGlzdF9kZWwoJmt1ZGV2LT5saXN0KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
