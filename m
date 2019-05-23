Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC41927D3F
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:52:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8FAAF87DB0;
	Thu, 23 May 2019 12:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DQBbPXYlc3a9; Thu, 23 May 2019 12:52:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70DCC87D22;
	Thu, 23 May 2019 12:52:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 20D051BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1D6A686ACC
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hFIkQ4SFQfBq for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:51:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DE5A286AAA
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:51:56 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id u27so4303603lfg.10
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ia7CedsVGwIb86j/mel4yJY3UB1AG6M5u+2ZXx5Hn7o=;
 b=2CMbxjkZ6LJd8gm7ntkrCQeJx7LqjcqwKEvmI5El9W4rTiP+Kxt1mKpNr90yXIVbek
 8bG07ZU3cTR+kx1TBFcGVZrSP69gNyPlZ2qiKfpJNeY0rJf8CmzQzYtvEXy9aIHfVXCd
 d9iJQ9JwmkoWOKX0dIXRQMUOG9yiMAuqNKqXA0RudMAjquOFTnyD0/QhUj5+rYxj/xAl
 atWZW5QLBsUxWDM9Tdr4IKAxw0O2681lJY/+Eh2zfTLqwA8CHOHFhJXjrtRXYnPky6XU
 B+7z9+uJV7iqfJ6Tk1m3/z5ajyEY3FQNxR6z+Jcyqnid8BdlnyjOB73IxCo16bBV+BZm
 MMFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ia7CedsVGwIb86j/mel4yJY3UB1AG6M5u+2ZXx5Hn7o=;
 b=cay7RS/msXcoFpqqESnOKMzwrQiBKcr5vZIOT4PeJ4koVx5GchiIwABIip5pbIu/A4
 8fEYpQfZv0szVlkzwyXjNjjf3ApJy5XhYI9jCXv+6nM+kcLXRPjV2SlIaj5D92WO+9iO
 NM+iNJNyehD5/JMiRuVJEKiQUsA4eDAUFM1Euj/k9gJ7MAJqS1tCOrXPvhVjXTU6oiHO
 bIXvEEArtEUHhVdktxQP7YGEJ5V0OOhfvzQv4Wr6rLJiouCnEsWUwhYURzu7s7TS6gCn
 YxoHwdjcLXS2xgCTcp50byMOvgE7S+oGk/pEdHzxTDXDLcU1Qq+zd4BZGZ5SGt6jJhs5
 5f8Q==
X-Gm-Message-State: APjAAAWjQ0Qvl0V5TLJ5GgusWdvpmNlClC1BPj9rpIWTEf4R4WvYBkzt
 yocL1VIswa+BWFfrIu/gy1Vb5w==
X-Google-Smtp-Source: APXvYqyMpM8twI2730Pqo6Oq0I4rCKeDxFMN5e3PhGc9TPfyniD1qBb8sI2/114nfDhBVeRVn8+3Gg==
X-Received: by 2002:a19:be17:: with SMTP id o23mr21838119lff.170.1558615915079; 
 Thu, 23 May 2019 05:51:55 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id c19sm5947154lfi.69.2019.05.23.05.51.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:51:54 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 9/9] staging: kpc2000: remove unnecessary oom message
Date: Thu, 23 May 2019 14:51:43 +0200
Message-Id: <20190523125143.32511-10-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJQb3NzaWJsZSB1bm5lY2Vzc2FyeSAnb3V0IG9m
IG1lbW9yeScKbWVzc2FnZSIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1v
bkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9w
cm9iZS5jIHwgNCArLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxs
X3Byb2JlLmMgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYwpp
bmRleCA1ZTY1YmQ1NmQ2NmUuLmY3MzFhOTdjNmNhYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFn
aW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL2tw
YzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKQEAgLTI5MSwxMCArMjkxLDggQEAgc3RhdGljIGlu
dCBwcm9iZV9jb3JlX3Vpbyh1bnNpZ25lZCBpbnQgY29yZV9udW0sIHN0cnVjdCBrcDIwMDBfZGV2
aWNlICpwY2FyZCwKIAlkZXZfZGJnKCZwY2FyZC0+cGRldi0+ZGV2LCAiRm91bmQgVUlPIGNvcmU6
ICAgdHlwZSA9ICUwMmQgIGRtYSA9ICUwMnggLyAlMDJ4ICBvZmZzZXQgPSAweCV4ICBsZW5ndGgg
PSAweCV4ICglZCByZWdzKVxuIiwgY3RlLnR5cGUsIEtQQ19PTERfUzJDX0RNQV9DSF9OVU0oY3Rl
KSwgS1BDX09MRF9DMlNfRE1BX0NIX05VTShjdGUpLCBjdGUub2Zmc2V0LCBjdGUubGVuZ3RoLCBj
dGUubGVuZ3RoIC8gOCk7CiAKIAlrdWRldiA9IGt6YWxsb2Moc2l6ZW9mKCprdWRldiksIEdGUF9L
RVJORUwpOwotCWlmICgha3VkZXYpIHsKLQkJZGV2X2VycigmcGNhcmQtPnBkZXYtPmRldiwgInBy
b2JlX2NvcmVfdWlvOiBmYWlsZWQgdG8ga3phbGxvYyBrcGNfdWlvX2RldmljZVxuIik7CisJaWYg
KCFrdWRldikKIAkJcmV0dXJuIC1FTk9NRU07Ci0JfQogCiAJSU5JVF9MSVNUX0hFQUQoJmt1ZGV2
LT5saXN0KTsKIAlrdWRldi0+cGNhcmQgPSBwY2FyZDsKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
