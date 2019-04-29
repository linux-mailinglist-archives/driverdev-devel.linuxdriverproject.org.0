Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B35BE999
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Apr 2019 19:59:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A0A485BCA;
	Mon, 29 Apr 2019 17:59:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OHYuleedDMQV; Mon, 29 Apr 2019 17:59:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A98E885BCD;
	Mon, 29 Apr 2019 17:59:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A57521BF23B
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 17:59:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A299622C44
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 17:59:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iGWbzToZkw3A for <devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 17:59:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 8119822270
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 17:59:45 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id p19so6475278qkm.10
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 10:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=yL+SmVseEfdaIJChh77smjXMJCyTOeRPG4sdYAGm78c=;
 b=S8Wpy22pQ6+hHsvpX2spQhaJkQhcdRhV1lH5EphIHaicUTdZPYoN+iogQNM0dyiXFD
 8oh0bD1NbBysGrV6tXX47TnTl0LQ/OQGgnNdWhWgVEt3W5rYcDR0+JeWI3aPxahnumrX
 VLeYIY0L9YsEKF8XT28Igf9rH27Wcs/AtZyES9YYsu2NR28HCKJuogcp9Pz1CgMLDPL8
 a3O+37wpF5W1NfRNwLn1Syjw39rnQ7K2bzoTcF+W5OJJxVdiLHVejUrL0LX6bBwz5rw7
 6UAjZNwhMmK2E/h7CJre3B+89hXFtXGNhp21E6gTXQ4+Es9VBO0/vmFlDjmJfeLPUKyg
 Drkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=yL+SmVseEfdaIJChh77smjXMJCyTOeRPG4sdYAGm78c=;
 b=uFnTgF3ReqWcb77bwAhk3dZjUnh9p5RZZoj5ypQQOgmeFmssD6BCBsg4Fnxe1U5mQH
 afmhcLOqTxLBtxVYMlj4ejwsrESsMtDLaDMu54wJgwg1oVS1PJv36W+V97iKGeMWCOfd
 hxmONYkxHTNIrX3bvlBcu0softD6qeuJHrleYsVbPcjQ9syzTZis7B+8WeN0Inmrmq44
 OWs66qKLqpx19yQDWEDksfYipK3vnEs00onb4iV+pfGoeePHhStRzkR6EmKY1DpDOyhW
 2QOSjB9WNkPFkIYLra1KpUzdQBRaSizZuHjTGoJZnsBlYiSMofOwwtmi1gTlGIgfg62u
 Uwlw==
X-Gm-Message-State: APjAAAUPHEbzltkHAzIixQ+y2l8zALp7ATihGBF7buq9YEEFL9ho/pd1
 WkZJf4ckfmfrNb2yImQMtjM=
X-Google-Smtp-Source: APXvYqwqAQNE+Ut09opIpLJIGSCDS7bx5geJX+Lthjy6net0ioLipxgWRdOsP0mj9ccj7uDDu0D9ug==
X-Received: by 2002:ae9:c20b:: with SMTP id j11mr45839310qkg.357.1556560784513; 
 Mon, 29 Apr 2019 10:59:44 -0700 (PDT)
Received: from smtp.gmail.com ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id y18sm7542950qkf.7.2019.04.29.10.59.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:59:44 -0700 (PDT)
Date: Mon, 29 Apr 2019 14:59:40 -0300
From: =?utf-8?B?Sm/Do28=?= Seckler <joaoseckler@gmail.com>
To: lars@metafoo.de, Michael.Hennerich@analog.com, stefan.popa@analog.com,
 jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: iio: adt7316: match parenthesis alignment
Message-ID: <20190429175939.2jvt4qwrtbmpvhl6@smtp.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, kernel-usp@googlegroups.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhpcyBwYXRjaCBzb2x2ZXMgdGhlIGZvbGxvd2luZyBjaGVja3BhdGNoLnBsIG1lc3NhZ2U6CkNI
RUNLOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMuClRoaXMgbWFrZXMg
dGhlIGZpbGUgbW9yZSBjb21wbGlhbnQgd2l0aCB0aGUgcHJlZmVycmVkIGNvZGluZyBzdHlsZSBm
b3IKdGhlIExpbnV4IGtlcm5lbC4KClNpZ25lZC1vZmYtYnk6IEpvw6NvIFNlY2tsZXIgPGpvYW9z
ZWNrbGVyQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvaWlvL2FkZGFjL2FkdDczMTYu
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9paW8vYWRkYWMvYWR0NzMxNi5jIGIvZHJpdmVy
cy9zdGFnaW5nL2lpby9hZGRhYy9hZHQ3MzE2LmMKaW5kZXggYjZhNjVlZThkNTU4Li4zN2NlNTYz
Y2IwZTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9paW8vYWRkYWMvYWR0NzMxNi5jCisr
KyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vYWRkYWMvYWR0NzMxNi5jCkBAIC0yMTU0LDcgKzIxNTQs
NyBAQCBpbnQgYWR0NzMxNl9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBhZHQ3MzE2
X2J1cyAqYnVzLAogCQljaGlwLT5kYWNfYml0cyA9IDg7CiAKIAljaGlwLT5sZGFjX3BpbiA9IGRl
dm1fZ3Bpb2RfZ2V0X29wdGlvbmFsKGRldiwgImFkaSxsZGFjIiwKLQkJCQkJCUdQSU9EX09VVF9M
T1cpOworCQkJCQkJIEdQSU9EX09VVF9MT1cpOwogCWlmIChJU19FUlIoY2hpcC0+bGRhY19waW4p
KSB7CiAJCXJldCA9IFBUUl9FUlIoY2hpcC0+bGRhY19waW4pOwogCQlkZXZfZXJyKGRldiwgIkZh
aWxlZCB0byByZXF1ZXN0IGxkYWMgR1BJTzogJWRcbiIsIHJldCk7Ci0tIAoyLjExLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
