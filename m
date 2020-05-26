Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EE91E2A49
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 20:51:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3530887C8E;
	Tue, 26 May 2020 18:51:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xxF8ebh6gA6S; Tue, 26 May 2020 18:51:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C36687C22;
	Tue, 26 May 2020 18:51:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 849791BF83E
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 18:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 757FE204C7
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 18:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bmo3me0cZhbx for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 18:51:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 89A4120479
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 18:51:37 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id e11so9599649pfn.3
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 11:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=psykMHDR6rP9kwTMPx/ucgHvqtZe3pI7rExatJDOE+w=;
 b=SsorgqpxhXuXWLSKvF7U5iYLs2ROtI8v74bVRGVatiJJSK30BvDyNrLtnnL5yyqKdG
 309QzyEQG0Mel3wEN6VpAWZ2Nwir4e157evFDGqT/CZ8ptvFg3VRznuHXsBkOym2ChMw
 xFeboYMIWISlFqB395MWonk3wRdhGwhqloCyAC0ZKBQGbE0QtGoFNxr7fP01vFcSTRcF
 JvO5oDDc2zDxZMB3YTwn0bd3E3LSjArn0PQGJSFSpuh917GVvMnQdb9oTfg3YKMIgM+V
 f3Zg/2akbJUIwI3yjq1GZNGu9TArqR/i/a6689Al+cb6VaOZIwVU2y9/5m0S/TWMuiUf
 1hlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=psykMHDR6rP9kwTMPx/ucgHvqtZe3pI7rExatJDOE+w=;
 b=Jk/0uitldpu1znAYO80vkEGqwh6YOy8jbniJBszFsUW+A/FmjrIp9a3lna/TA1n46S
 bfj+1ST4a5t8vFVGQ4QxKicPAeHBmP4OycetSXZAutCjuaXKAvwBJMQ35d7x9Bgr9cSy
 2Bsp0/67v2DNlW7KfGots1MaVbmt5wL1eKPh3xdJSaQl2p0VqhWxpaoJmgnoZCCpNcdD
 GWJi1oiAjVkObTg8uDPLZgXFAkkJ1g4CroQC0kif/54UajBUOWU+uzd2yhzQYcFD5Mij
 xMhGJMLoZWDlAghrvEG4pz9hkDSk2UFjOUFcGDea3/3XBgMjpOobakeKZQ6LZ6zgtSG/
 eoeA==
X-Gm-Message-State: AOAM532ZiKflmHjq1EaXaFtqie80Lv9BmTKce4xNPQkg2LcGFt/kupUT
 hWF7OTekobwUOGUmNXM+H94=
X-Google-Smtp-Source: ABdhPJwwaFdTZsDgGfzq2fx7nWo5rQ5M0Wo1T43Rf1cbjG718rmxz2Wdx3ATCmUsBNQmLpjctp1Z9A==
X-Received: by 2002:a63:497:: with SMTP id 145mr287904pge.356.1590519097155;
 Tue, 26 May 2020 11:51:37 -0700 (PDT)
Received: from localhost.localdomain ([182.70.106.85])
 by smtp.googlemail.com with ESMTPSA id v1sm209790pjn.9.2020.05.26.11.51.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 11:51:36 -0700 (PDT)
From: Gaurav Pathak <gauravpathak129@gmail.com>
X-Google-Original-From: Gaurav Pathak
To: dan.carpenter@oracle.com
Subject: [PATCH v3] Staging: comedi: dt2814: remove unused assignments
Date: Wed, 27 May 2020 00:21:30 +0530
Message-Id: <20200526185130.7160-1-gauravpathak129@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526174813.GB30374@kadam>
References: <20200526174813.GB30374@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, abbotti@mev.co.uk,
 Gaurav Pathak <gauravpathak129@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogR2F1cmF2IFBhdGhhayA8Z2F1cmF2cGF0aGFrMTI5QGdtYWlsLmNvbT4KClNpbGVuY2Ug
Zm9sbG93aW5nIGNvbXBpbGVyIHdhcm5pbmc6CmRyaXZlcnMvc3RhZ2luZy9jb21lZGkvZHJpdmVy
cy9kdDI4MTQuYzogSW4gZnVuY3Rpb24g4oCYZHQyODE0X2ludGVycnVwdOKAmToKZHJpdmVycy9z
dGFnaW5nL2NvbWVkaS9kcml2ZXJzL2R0MjgxNC5jOjE5Mzo2OiB3YXJuaW5nOiB2YXJpYWJsZSDi
gJhkYXRh4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCiAg
aW50IGRhdGE7CiAgICAgIF5+fn4KZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9kcml2ZXJzL2R0Mjgx
NC5jOiBJbiBmdW5jdGlvbiDigJhkdDI4MTRfYXR0YWNo4oCZOgpkcml2ZXJzL3N0YWdpbmcvY29t
ZWRpL2RyaXZlcnMvZHQyODE0LmM6MjMyOjY6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmGnigJkgc2V0
IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KICBpbnQgaTsKICAgICAg
XgoKU2lnbmVkLW9mZi1ieTogR2F1cmF2IFBhdGhhayA8Z2F1cmF2cGF0aGFrMTI5QGdtYWlsLmNv
bT4KLS0tCiB2MzogVXBkYXRlIGZyb20gZW1haWwgaGVhZGVyLgogZHJpdmVycy9zdGFnaW5nL2Nv
bWVkaS9kcml2ZXJzL2R0MjgxNC5jIHwgMTAgLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEw
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9jb21lZGkvZHJpdmVy
cy9kdDI4MTQuYyBiL2RyaXZlcnMvc3RhZ2luZy9jb21lZGkvZHJpdmVycy9kdDI4MTQuYwppbmRl
eCBkMmM3MTU3MzczNjEuLmVlYTU4N2Q2M2UxOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5n
L2NvbWVkaS9kcml2ZXJzL2R0MjgxNC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9jb21lZGkvZHJp
dmVycy9kdDI4MTQuYwpAQCAtMTg2LDIyICsxODYsMTUgQEAgc3RhdGljIGludCBkdDI4MTRfYWlf
Y21kKHN0cnVjdCBjb21lZGlfZGV2aWNlICpkZXYsIHN0cnVjdCBjb21lZGlfc3ViZGV2aWNlICpz
KQogCiBzdGF0aWMgaXJxcmV0dXJuX3QgZHQyODE0X2ludGVycnVwdChpbnQgaXJxLCB2b2lkICpk
KQogewotCWludCBsbywgaGk7CiAJc3RydWN0IGNvbWVkaV9kZXZpY2UgKmRldiA9IGQ7CiAJc3Ry
dWN0IGR0MjgxNF9wcml2YXRlICpkZXZwcml2ID0gZGV2LT5wcml2YXRlOwogCXN0cnVjdCBjb21l
ZGlfc3ViZGV2aWNlICpzID0gZGV2LT5yZWFkX3N1YmRldjsKLQlpbnQgZGF0YTsKIAogCWlmICgh
ZGV2LT5hdHRhY2hlZCkgewogCQlkZXZfZXJyKGRldi0+Y2xhc3NfZGV2LCAic3B1cmlvdXMgaW50
ZXJydXB0XG4iKTsKIAkJcmV0dXJuIElSUV9IQU5ETEVEOwogCX0KIAotCWhpID0gaW5iKGRldi0+
aW9iYXNlICsgRFQyODE0X0RBVEEpOwotCWxvID0gaW5iKGRldi0+aW9iYXNlICsgRFQyODE0X0RB
VEEpOwotCi0JZGF0YSA9IChoaSA8PCA0KSB8IChsbyA+PiA0KTsKLQogCWlmICghKC0tZGV2cHJp
di0+bnRyaWcpKSB7CiAJCWludCBpOwogCkBAIC0yMjksNyArMjIyLDYgQEAgc3RhdGljIGludCBk
dDI4MTRfYXR0YWNoKHN0cnVjdCBjb21lZGlfZGV2aWNlICpkZXYsIHN0cnVjdCBjb21lZGlfZGV2
Y29uZmlnICppdCkKIAlzdHJ1Y3QgZHQyODE0X3ByaXZhdGUgKmRldnByaXY7CiAJc3RydWN0IGNv
bWVkaV9zdWJkZXZpY2UgKnM7CiAJaW50IHJldDsKLQlpbnQgaTsKIAogCXJldCA9IGNvbWVkaV9y
ZXF1ZXN0X3JlZ2lvbihkZXYsIGl0LT5vcHRpb25zWzBdLCAweDIpOwogCWlmIChyZXQpCkBAIC0y
NDEsOCArMjMzLDYgQEAgc3RhdGljIGludCBkdDI4MTRfYXR0YWNoKHN0cnVjdCBjb21lZGlfZGV2
aWNlICpkZXYsIHN0cnVjdCBjb21lZGlfZGV2Y29uZmlnICppdCkKIAkJZGV2X2VycihkZXYtPmNs
YXNzX2RldiwgInJlc2V0IGVycm9yIChmYXRhbClcbiIpOwogCQlyZXR1cm4gLUVJTzsKIAl9Ci0J
aSA9IGluYihkZXYtPmlvYmFzZSArIERUMjgxNF9EQVRBKTsKLQlpID0gaW5iKGRldi0+aW9iYXNl
ICsgRFQyODE0X0RBVEEpOwogCiAJaWYgKGl0LT5vcHRpb25zWzFdKSB7CiAJCXJldCA9IHJlcXVl
c3RfaXJxKGl0LT5vcHRpb25zWzFdLCBkdDI4MTRfaW50ZXJydXB0LCAwLAotLSAKMi4xNy4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
