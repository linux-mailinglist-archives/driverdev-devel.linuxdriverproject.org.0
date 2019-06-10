Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A163B112
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 10:45:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A0CB862ED;
	Mon, 10 Jun 2019 08:44:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9XeVsj3vASOy; Mon, 10 Jun 2019 08:44:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57AEC86223;
	Mon, 10 Jun 2019 08:44:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18EAE1BF3CB
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:44:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 15A1020336
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:44:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jMSYB+ZZ7eTe for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 08:44:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 9A50B20111
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 08:44:52 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id v24so2780654ljg.13
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 01:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0HrE3SWkxzOWZuyGJJRbueeV0IUbEbszue8wV9SG4eE=;
 b=P+6xRp464OEsrDvQLaPAgcbhExhH/IEbRLI1cELg/Lj4ryaES0m2U4LUWy+RJC4Ox+
 GA3gM1T7y4w5ZBR+B2NI7izXzfLWg84kWqDm9Fwq4IKBv73JPinCa2S+yJ2sjV+KaduA
 MqMl7Z0bznMJOmNiwNX5r1XNSfwkOtMtPSNfLppmyNDbMF90at1QEZH+8QsM8aT7MBeJ
 SESuaZRloNjlYHTPAkKgSGK0enk5GolaP6qVAoGQTRmCz7JVa3HK/SlrYcUB93mtD4nh
 2OZ8q0HyWa7PuwgeagjbHefqeoYNsCIVxbn6KoiRnsjAFjhut1GbN58VBtZRRwFxykjd
 4L6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0HrE3SWkxzOWZuyGJJRbueeV0IUbEbszue8wV9SG4eE=;
 b=WwJXfqa7AWe80n0kUGEywWel2H6wjWso4G7nFojeD5Pvv2kv7zDHVK9wvnHN0lS49D
 rxyxjDEKAO4unKyGsXnz6xZe7wi6wLEADFqEekV14dtsozBATNvksJs3qOdmDiNkVY/f
 Q6+jeY5x08EtxvEp/gfvhPBklSFqWk6ns4Z0B3Fv25qjKzWv3lqUlkLifKk4CxUV5B2B
 EOJYBnFz9/XlFKrP1NpS4EEKu7yao67dUEO8Q30bdNSyJhYIitZTujalQ+kY3Q6BaIQk
 L2rb/GaSxHWkq3B6MgahtliyrxRsxtdT7dR1eywlXx0rK70z6Wox4sOmX2jS6Ti3cccg
 ZP0Q==
X-Gm-Message-State: APjAAAVjJwVeBFWAvtJvl9Nu/p1wLuWkodCeCwGWHnktsl+ErjC2ryhW
 QB4NKalelBzCwpgCwJsx7D8osA==
X-Google-Smtp-Source: APXvYqzeCmNNycATPb+tEdbrWfGa6chXRvAFad2FJo9x6rPYEHXQDOIVQj7kXBClqueQYNN1hd+jCg==
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr1934188ljs.44.1560156290949;
 Mon, 10 Jun 2019 01:44:50 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id e26sm1826486ljl.33.2019.06.10.01.44.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 01:44:50 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/5] staging: kpc2000: remove unnecessary debug prints in
 core.c
Date: Mon, 10 Jun 2019 10:44:29 +0200
Message-Id: <20190610084432.12597-3-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610084432.12597-1-simon@nikanor.nu>
References: <20190610084432.12597-1-simon@nikanor.nu>
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
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>, =simon@nikanor.nu,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVidWcgcHJpbnRzIHRoYXQgYXJlIHVzZWQgb25seSB0byBpbmZvcm0gYWJvdXQgZnVuY3Rpb24g
ZW50cnkgb3IgZXhpdApjYW4gYmUgcmVtb3ZlZCBhcyBmdHJhY2UgY2FuIGJlIHVzZWQgdG8gZ2V0
IHRoaXMgaW5mb3JtYXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1v
bkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5j
IHwgNiAtLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jIGIvZHJpdmVycy9zdGFnaW5n
L2twYzIwMDAva3BjMjAwMC9jb3JlLmMKaW5kZXggOTNlMzgxMTk4YjQ1Li45YjliMjlhYzkwYzUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCisrKyBi
L2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCkBAIC0zMTEsOSArMzExLDYg
QEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAl1
bnNpZ25lZCBsb25nIGRtYV9iYXJfcGh5c19sZW47CiAJdTE2IHJlZ3ZhbDsKIAotCWRldl9kYmco
JnBkZXYtPmRldiwgIiVzKHBkZXYgPSBbJXBdLCBpZCA9IFslcF0pXG4iLAotCQlfX2Z1bmNfXywg
cGRldiwgaWQpOwotCiAJLyoKIAkgKiBTdGVwIDE6IEFsbG9jYXRlIGEgc3RydWN0IGZvciB0aGUg
cGNhcmQKIAkgKi8KQEAgLTUwNiw3ICs1MDMsNiBAQCBzdGF0aWMgaW50IGtwMjAwMF9wY2llX3By
b2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAogCXdyaXRlbChLUENfRE1BX0NBUkRfSVJRX0VOQUJM
RSB8IEtQQ19ETUFfQ0FSRF9VU0VSX0lOVEVSUlVQVF9NT0RFLAogCSAgICAgICBwY2FyZC0+ZG1h
X2NvbW1vbl9yZWdzKTsKIAotCWRldl9kYmcoJnBjYXJkLT5wZGV2LT5kZXYsICIlcygpIGNvbXBs
ZXRlIVxuIiwgX19mdW5jX18pOwogCW11dGV4X3VubG9jaygmcGNhcmQtPnNlbSk7CiAJcmV0dXJu
IDA7CiAKQEAgLTU0MCw4ICs1MzYsNiBAQCBzdGF0aWMgdm9pZCBrcDIwMDBfcGNpZV9yZW1vdmUo
c3RydWN0IHBjaV9kZXYgKnBkZXYpCiB7CiAJc3RydWN0IGtwMjAwMF9kZXZpY2UgKnBjYXJkID0g
cGNpX2dldF9kcnZkYXRhKHBkZXYpOwogCi0JZGV2X2RiZygmcGRldi0+ZGV2LCAiJXMocGRldj0l
cClcbiIsIF9fZnVuY19fLCBwZGV2KTsKLQogCWlmICghcGNhcmQpCiAJCXJldHVybjsKIAotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
