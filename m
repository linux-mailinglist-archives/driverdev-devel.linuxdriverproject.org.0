Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5C92E587
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 21:42:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 24E2B864EC;
	Wed, 29 May 2019 19:42:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m986F49fwhOb; Wed, 29 May 2019 19:42:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 071A78647E;
	Wed, 29 May 2019 19:42:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 576921BF2B3
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 19:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 51CA787FA4
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 19:42:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LPh4lK15pou5 for <devel@linuxdriverproject.org>;
 Wed, 29 May 2019 19:42:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9CFCD87F93
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 19:42:31 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id w1so3740193ljw.0
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 12:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=15FB7VWNTS09jOnKS7kZ1lxWffgJJH8elfqUbjMzIek=;
 b=W5j4zwKb9VnXxdkr6VCOXw01H3xP+Drolc6weYEBYi1SSl5fMA7WPay5KzfRe27+nS
 UUEGUKnMBYlAP193V62aNMxwa5A3IixqGZgYlGUkLBXwGnyiY5j49KX9T56RfwvTIGFm
 aBb9oOYAvZdEXYPatPJnirigsmFJ6zKcKNwT2x54Iu4M2JQxSKBI6FJU9Y5InZTZ5DbD
 StAUqmYTcHH0Kd5nnC24XL3M71Ibf3uCk5FXWCutOspBG1/WD7Z2XAI/r9gEo+kcd5lc
 Y+royAcZQ1UzR9jXbjFmHyIc93mySXzVBWNZZQ9m5KyLgPHeeBhzlL7LMIl7aDBjDRQY
 SYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=15FB7VWNTS09jOnKS7kZ1lxWffgJJH8elfqUbjMzIek=;
 b=Mj1m7uuDDl5GgHVb/bK4lRZkcOiNbkcH1FHnBwFp1i5Ap13aVeX8ZyIfTMfx3bP1NK
 /AryEXPof3WLRThJI8Cct88xKWSP7DmxvDjT8nnixITrQPIl/VhYszEnrGUUrY2nNVPD
 e9p2ZDa1bRPQMmr3Xem42D1kbkfbjt37AxpBdKh6EX58dIqVoXwYf+vvMPZbggD/eyMz
 hSnh6JWbVeOOAgIgACSitVkFNAfG4Fi69V8gqem5tfBjAosGeerkBUEbnPceSzX6xqK2
 dwq6MOHZ3S4RYgzcBlB3p2hauU5wAY/PFkDaZMoiM923tpKTrQ4yWIi1riB/H1LPruv2
 iCEw==
X-Gm-Message-State: APjAAAXL9DU7kAnMFiHY8Kwa4MDELuUPdEpB1DUszAAmLjVqGOOQun67
 JiyCa1bVVkuKop/RIknAom2YnA==
X-Google-Smtp-Source: APXvYqxA0lxab6Nu0SnqoWH9AnjYE6KgXIbGd4+maWc2k1YB44uaXwmkoYZBDi+B/giCmDI6RB4xUg==
X-Received: by 2002:a2e:8587:: with SMTP id b7mr59051396lji.101.1559158949520; 
 Wed, 29 May 2019 12:42:29 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id l18sm29731lja.94.2019.05.29.12.42.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 12:42:28 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: kpc2000: replace bogus variable name in core.c
Date: Wed, 29 May 2019 21:42:22 +0200
Message-Id: <20190529194222.9048-1-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
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

InN0cnVjdCBrcDIwMDBfcmVncyB0ZW1wIiBoYXMgbm90aGluZyB0byBkbyB3aXRoIHRlbXBlcmF0
dXJlcywgc28KcmVwbGFjZSBpdCB3aXRoIHRoZSBtb3JlIHByb3BlciBuYW1lICJyZWdzIi4KClNp
Z25lZC1vZmYtYnk6IFNpbW9uIFNhbmRzdHLDtm0gPHNpbW9uQG5pa2Fub3IubnU+Ci0tLQogZHJp
dmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMgfCAyNiArKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5j
IGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMKaW5kZXggNDExMDAzMmQw
Y2JiLi4xMWFjNTdlMzFkNDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2tw
YzIwMDAvY29yZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5j
CkBAIC0zMTQsMjQgKzMxNCwyNCBAQCBzdGF0aWMgbG9uZyBrcDIwMDBfY2Rldl9pb2N0bChzdHJ1
Y3QgZmlsZSAqZmlscCwgdW5zaWduZWQgaW50IGlvY3RsX251bSwKIAljYXNlIEtQMjAwMF9JT0NU
TF9HRVRfUENJRV9FUlJPUl9SRUc6ICAgICAgIHJldHVybiByZWFkcShwY2FyZC0+c3lzaW5mb19y
ZWdzX2Jhc2UgKyBSRUdfUENJRV9FUlJPUl9DT1VOVCk7CiAKIAljYXNlIEtQMjAwMF9JT0NUTF9H
RVRfRVZFUllUSElORzogewotCQlzdHJ1Y3Qga3AyMDAwX3JlZ3MgdGVtcDsKKwkJc3RydWN0IGtw
MjAwMF9yZWdzIHJlZ3M7CiAJCWludCByZXQ7CiAKLQkJbWVtc2V0KCZ0ZW1wLCAwLCBzaXplb2Yo
dGVtcCkpOwotCQl0ZW1wLmNhcmRfaWQgPSBwY2FyZC0+Y2FyZF9pZDsKLQkJdGVtcC5idWlsZF92
ZXJzaW9uID0gcGNhcmQtPmJ1aWxkX3ZlcnNpb247Ci0JCXRlbXAuYnVpbGRfZGF0ZXN0YW1wID0g
cGNhcmQtPmJ1aWxkX2RhdGVzdGFtcDsKLQkJdGVtcC5idWlsZF90aW1lc3RhbXAgPSBwY2FyZC0+
YnVpbGRfdGltZXN0YW1wOwotCQl0ZW1wLmh3X3JldiA9IHBjYXJkLT5oYXJkd2FyZV9yZXZpc2lv
bjsKLQkJdGVtcC5zc2lkID0gcGNhcmQtPnNzaWQ7Ci0JCXRlbXAuZGRuYSA9IHBjYXJkLT5kZG5h
OwotCQl0ZW1wLmNwbGRfcmVnID0gcmVhZHEocGNhcmQtPnN5c2luZm9fcmVnc19iYXNlICsgUkVH
X0NQTERfQ09ORklHKTsKLQotCQlyZXQgPSBjb3B5X3RvX3VzZXIoKHZvaWQqKWlvY3RsX3BhcmFt
LCAodm9pZCopJnRlbXAsIHNpemVvZih0ZW1wKSk7CisJCW1lbXNldCgmcmVncywgMCwgc2l6ZW9m
KHJlZ3MpKTsKKwkJcmVncy5jYXJkX2lkID0gcGNhcmQtPmNhcmRfaWQ7CisJCXJlZ3MuYnVpbGRf
dmVyc2lvbiA9IHBjYXJkLT5idWlsZF92ZXJzaW9uOworCQlyZWdzLmJ1aWxkX2RhdGVzdGFtcCA9
IHBjYXJkLT5idWlsZF9kYXRlc3RhbXA7CisJCXJlZ3MuYnVpbGRfdGltZXN0YW1wID0gcGNhcmQt
PmJ1aWxkX3RpbWVzdGFtcDsKKwkJcmVncy5od19yZXYgPSBwY2FyZC0+aGFyZHdhcmVfcmV2aXNp
b247CisJCXJlZ3Muc3NpZCA9IHBjYXJkLT5zc2lkOworCQlyZWdzLmRkbmEgPSBwY2FyZC0+ZGRu
YTsKKwkJcmVncy5jcGxkX3JlZyA9IHJlYWRxKHBjYXJkLT5zeXNpbmZvX3JlZ3NfYmFzZSArIFJF
R19DUExEX0NPTkZJRyk7CisKKwkJcmV0ID0gY29weV90b191c2VyKCh2b2lkKilpb2N0bF9wYXJh
bSwgKHZvaWQqKSZyZWdzLCBzaXplb2YocmVncykpOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIC1F
RkFVTFQ7CiAKLQkJcmV0dXJuIHNpemVvZih0ZW1wKTsKKwkJcmV0dXJuIHNpemVvZihyZWdzKTsK
IAkJfQogCiAJZGVmYXVsdDoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
