Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A241E25FA
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 17:50:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A0CF84F2A;
	Tue, 26 May 2020 15:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PLjK7l4X0dTo; Tue, 26 May 2020 15:50:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 55EC584EB4;
	Tue, 26 May 2020 15:50:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88D401BF842
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 15:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 854D9885C6
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 15:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id krt-v1+S-yRp for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 15:50:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0667287E5F
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 15:50:25 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id n15so10363219pfd.0
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 08:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d3s/pLD7nj21hdmawAnqZB1ca29MHptDmSGTKYK3W3E=;
 b=QKFX4CITtkj0CzudSzbINE+WsFl8jYzCH4/L49e7eTSLDSW8YU3cdeyr64P+uWfTez
 PzEGwsQydooBPeGb/KC/hNndMrssm5L26f66v3vzOSGwQOv8bs6NvpqhPBv5f5H56vfI
 dXZD7h5EVQnyoy2zzEjtHR78n1nMa0E97F8yfejzpD2Ytzgpj52QALvPLsSo/oOirLws
 lNP+bZ94PfDCHM2a6p/5RpobGWXYOdph5VZPC9X1t14NZpeXCvIyZD0wZzKbkzfQU554
 b1RToMXt+izSjJnSnDh6ODPmI1fCx+P9Lqf3W9+OjrdjydTd2vVMemNqfKzkf38UCm2J
 V0HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d3s/pLD7nj21hdmawAnqZB1ca29MHptDmSGTKYK3W3E=;
 b=cvOxxZ02UDf3eHHrWygZhruDJ9FOHRJno65VsvXfr+GYy9P5LQ15z8TvvBpKf8aC64
 BdU9IUl/wYiAH+wq1pGxfjz9maAxJEX2Offx+QqGoEgPyuFKbI7+Rscm9/b4LTi7znWS
 eV1SYxot2YNxhOZboby5MG1OQvaJ6stE9QD+VEdzfz9KwysOfS2DM4TF5ax4gp51w2E7
 U/EYT7rPPjbcs//gjsBDHyFi8bTacCvWEW/mPAp1xFGmkDju+sEwcgUNIWwJgBVeX+m9
 8VSTMcYU141YubNd2hoV6TLxP2Ll4dOc/jKEoRziopamlTr/W9buOIEotBThG6hlGbwm
 pM7A==
X-Gm-Message-State: AOAM532IPNcC5WSOPF3XHqElHUqMa3DsLjZRsfmgcJ1vnfCSa4v7GI2x
 J71+cDK8KtrgU9+coVy4NGE=
X-Google-Smtp-Source: ABdhPJykFr2Mf58LTlQqpfXnm0pnNTayQT7pcse1ruLBQO76W+Fs+bE5UCQNS98JnMdlm+dnJSUHtA==
X-Received: by 2002:a63:1c1:: with SMTP id 184mr1688258pgb.203.1590508224497; 
 Tue, 26 May 2020 08:50:24 -0700 (PDT)
Received: from gaurav-pc ([182.70.106.85])
 by smtp.gmail.com with ESMTPSA id m2sm16671pjk.52.2020.05.26.08.50.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 26 May 2020 08:50:23 -0700 (PDT)
From: gaurav <gauravpathak129@gmail.com>
X-Google-Original-From: "gaurav" <gaurav@gaurav-pc>
Received: by gaurav-pc (sSMTP sendmail emulation);
 Tue, 26 May 2020 21:20:18 +0530
To: dan.carpenter@oracle.com
Subject: [PATCH v2] Staging: comedi: dt2814: remove unused assignments
Date: Tue, 26 May 2020 21:20:16 +0530
Message-Id: <20200526155016.9146-1-gauravpathak129@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526150954.GA30374@kadam>
References: <20200526150954.GA30374@kadam>
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

U2lsZW5jZSBmb2xsb3dpbmcgY29tcGlsZXIgd2FybmluZzoKZHJpdmVycy9zdGFnaW5nL2NvbWVk
aS9kcml2ZXJzL2R0MjgxNC5jOiBJbiBmdW5jdGlvbiDigJhkdDI4MTRfaW50ZXJydXB04oCZOgpk
cml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvZHQyODE0LmM6MTkzOjY6IHdhcm5pbmc6IHZh
cmlhYmxlIOKAmGRhdGHigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJp
YWJsZV0KICBpbnQgZGF0YTsKICAgICAgXn5+fgpkcml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZl
cnMvZHQyODE0LmM6IEluIGZ1bmN0aW9uIOKAmGR0MjgxNF9hdHRhY2jigJk6CmRyaXZlcnMvc3Rh
Z2luZy9jb21lZGkvZHJpdmVycy9kdDI4MTQuYzoyMzI6Njogd2FybmluZzogdmFyaWFibGUg4oCY
aeKAmSBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQogIGludCBp
OwogICAgICBeCgpTaWduZWQtb2ZmLWJ5OiBHYXVyYXYgUGF0aGFrIDxnYXVyYXZwYXRoYWsxMjlA
Z21haWwuY29tPgotLS0KIHYyOiBVcGRhdGUgc3ViamVjdCBhbmQgY29tbWl0IG1lc3NhZ2UuCiBk
cml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvZHQyODE0LmMgfCAxMCAtLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFn
aW5nL2NvbWVkaS9kcml2ZXJzL2R0MjgxNC5jIGIvZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9kcml2
ZXJzL2R0MjgxNC5jCmluZGV4IGQyYzcxNTczNzM2MS4uZWVhNTg3ZDYzZTE4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvZHQyODE0LmMKKysrIGIvZHJpdmVycy9z
dGFnaW5nL2NvbWVkaS9kcml2ZXJzL2R0MjgxNC5jCkBAIC0xODYsMjIgKzE4NiwxNSBAQCBzdGF0
aWMgaW50IGR0MjgxNF9haV9jbWQoc3RydWN0IGNvbWVkaV9kZXZpY2UgKmRldiwgc3RydWN0IGNv
bWVkaV9zdWJkZXZpY2UgKnMpCiAKIHN0YXRpYyBpcnFyZXR1cm5fdCBkdDI4MTRfaW50ZXJydXB0
KGludCBpcnEsIHZvaWQgKmQpCiB7Ci0JaW50IGxvLCBoaTsKIAlzdHJ1Y3QgY29tZWRpX2Rldmlj
ZSAqZGV2ID0gZDsKIAlzdHJ1Y3QgZHQyODE0X3ByaXZhdGUgKmRldnByaXYgPSBkZXYtPnByaXZh
dGU7CiAJc3RydWN0IGNvbWVkaV9zdWJkZXZpY2UgKnMgPSBkZXYtPnJlYWRfc3ViZGV2OwotCWlu
dCBkYXRhOwogCiAJaWYgKCFkZXYtPmF0dGFjaGVkKSB7CiAJCWRldl9lcnIoZGV2LT5jbGFzc19k
ZXYsICJzcHVyaW91cyBpbnRlcnJ1cHRcbiIpOwogCQlyZXR1cm4gSVJRX0hBTkRMRUQ7CiAJfQog
Ci0JaGkgPSBpbmIoZGV2LT5pb2Jhc2UgKyBEVDI4MTRfREFUQSk7Ci0JbG8gPSBpbmIoZGV2LT5p
b2Jhc2UgKyBEVDI4MTRfREFUQSk7Ci0KLQlkYXRhID0gKGhpIDw8IDQpIHwgKGxvID4+IDQpOwot
CiAJaWYgKCEoLS1kZXZwcml2LT5udHJpZykpIHsKIAkJaW50IGk7CiAKQEAgLTIyOSw3ICsyMjIs
NiBAQCBzdGF0aWMgaW50IGR0MjgxNF9hdHRhY2goc3RydWN0IGNvbWVkaV9kZXZpY2UgKmRldiwg
c3RydWN0IGNvbWVkaV9kZXZjb25maWcgKml0KQogCXN0cnVjdCBkdDI4MTRfcHJpdmF0ZSAqZGV2
cHJpdjsKIAlzdHJ1Y3QgY29tZWRpX3N1YmRldmljZSAqczsKIAlpbnQgcmV0OwotCWludCBpOwog
CiAJcmV0ID0gY29tZWRpX3JlcXVlc3RfcmVnaW9uKGRldiwgaXQtPm9wdGlvbnNbMF0sIDB4Mik7
CiAJaWYgKHJldCkKQEAgLTI0MSw4ICsyMzMsNiBAQCBzdGF0aWMgaW50IGR0MjgxNF9hdHRhY2go
c3RydWN0IGNvbWVkaV9kZXZpY2UgKmRldiwgc3RydWN0IGNvbWVkaV9kZXZjb25maWcgKml0KQog
CQlkZXZfZXJyKGRldi0+Y2xhc3NfZGV2LCAicmVzZXQgZXJyb3IgKGZhdGFsKVxuIik7CiAJCXJl
dHVybiAtRUlPOwogCX0KLQlpID0gaW5iKGRldi0+aW9iYXNlICsgRFQyODE0X0RBVEEpOwotCWkg
PSBpbmIoZGV2LT5pb2Jhc2UgKyBEVDI4MTRfREFUQSk7CiAKIAlpZiAoaXQtPm9wdGlvbnNbMV0p
IHsKIAkJcmV0ID0gcmVxdWVzdF9pcnEoaXQtPm9wdGlvbnNbMV0sIGR0MjgxNF9pbnRlcnJ1cHQs
IDAsCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
