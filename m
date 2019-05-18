Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 471302257C
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 00:49:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F43E866FC;
	Sat, 18 May 2019 22:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J2pPP+TcLnbo; Sat, 18 May 2019 22:49:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 643E6860BE;
	Sat, 18 May 2019 22:49:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E4FE51BF2B0
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D779085D3D
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m9-28ePWWMgh for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 22:49:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D794985D39
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 22:49:37 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id j53so12162171qta.9
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 15:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usp-br.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YfANJ0NjSuT03hGxYrrybmRloobQ2aNV6k4ZVS8sjkk=;
 b=s/VAevDUzrN4FYKLzj6wS9/MMwq+kuH3vDcW/F4Fujom2rI550pYSulPYPa2DHYIoa
 vziuEPs7+KFZKSOy4dl3S8XsA3rR1xpt4h67jOFUcGvczSirRSoPZZ+ophuYFsVN0nKA
 KJXJ7PjsM6A0QMDUt4mE2IpJKVMc0JBo+JQlHXzpUXpOCQi3bR+vLnDAiEUhXrmDpJpx
 2jS67Tl+3ptVLwfqcKW8MDhwDjGiqfldiuA3Byur4rqXRY2LArH0gKJQirF/Ybv2wWXT
 9PyynABXznVJI7sX4K9U1EYK+stMfTaBmSqOdaQWcTOgDPZVPt6aFNn6D0wrEJNNO2o3
 rMIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YfANJ0NjSuT03hGxYrrybmRloobQ2aNV6k4ZVS8sjkk=;
 b=uYYHEhE1rrPiEPjhP8kSqqf2R3/LCH2jYJFe+d5nAPcPpQ2gvpcDxelSBzLXvJhQNq
 vxnwa5e+wVSCE6McZp3zDTWK7sRG0hP8DTF+gZvnUkJAfaVjQ88v38UheMKzHChY9UsL
 lzVT/PXaGbf8Scqu0AAPWE8S9OQnOTWY+iDsmNsWq+ZPV+ttBN2mtOvrRcaW1cJtBvhV
 yomqmn7tOGIWMguzqZaqs+Mzv64h533zkF545CjG7ufGFFFQ3L9Ba7Ti6t285tf6/HOR
 5mjXEKWAvrd1iZYi76UJFmQTxp+E5UpOOlmMO34Mq0LkX2DmS7DbeStaFdj1Ygus3Gdf
 +PxQ==
X-Gm-Message-State: APjAAAVlRQDCH0F77fdAcVcEKUfvuw1OGWykU9mh5v2aKi2Tu8BDyT7p
 CBwceZJll1bol3N5qZocF9+3pQ==
X-Google-Smtp-Source: APXvYqwdNGqtocpFV8e81epFjCB39YB58+eSXKAmOz6uUNBChWqLKg71GxYgbQw6wTK6oeDaMXtTQg==
X-Received: by 2002:a0c:94b9:: with SMTP id j54mr14290525qvj.54.1558219307081; 
 Sat, 18 May 2019 15:41:47 -0700 (PDT)
Received: from greta.semfio.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id d32sm7348992qtk.0.2019.05.18.15.41.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 15:41:46 -0700 (PDT)
From: =?UTF-8?q?B=C3=A1rbara=20Fernandes?= <barbara.fernandes@usp.br>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [RESEND PATCH 0/2] Enhance dt support and channel creation
Date: Sat, 18 May 2019 19:41:34 -0300
Message-Id: <20190518224136.16942-1-barbara.fernandes@usp.br>
X-Mailer: git-send-email 2.22.0.rc0.1.g337bb99195.dirty
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?B=C3=A1rbara=20Fernandes?= <barbara.fernandes@usp.br>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhpcyBzZXJpZXMgb2YgcGF0Y2hlcyBzZXQgYSBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHdpdGggYWxs
IHRoZSBkZXZpY2VzIHRoaXMKZHJpdmVyIGlzIGFibGUgdG8gbWFuYWdlIGFuZCBhbHNvIGFkZCBh
IG1hY3JvIHRvIGZhY2lsaXRhdGUgY2hhbm5lbCBjcmVhdGlvbiBmb3IKaXRzIHR3byBjYXBhY2l0
YW5jZSBjaGFubmVscy4KCkLDoXJiYXJhIEZlcm5hbmRlcyAoMik6CiAgc3RhZ2luZzogaWlvOiBj
ZGM6IGFkNzE1MDogY3JlYXRlIG9mX2RldmljZV9pZCBhcnJheQogIHN0YWdpbmc6IGlpbzogY2Rj
OiBhZDcxNTA6IGNyZWF0ZSBtYWNybyBmb3IgY2FwYWNpdGFuY2UgY2hhbm5lbHMKCiBkcml2ZXJz
L3N0YWdpbmcvaWlvL2NkYy9hZDcxNTAuYyB8IDM5ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0p
CgotLSAKMi4yMi4wLnJjMC4xLmczMzdiYjk5MTk1LmRpcnR5CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
