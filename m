Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 862D85060E
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 11:47:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31D9E857CB;
	Mon, 24 Jun 2019 09:47:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j9q7nv04GKFw; Mon, 24 Jun 2019 09:47:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 226C985250;
	Mon, 24 Jun 2019 09:47:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B2C2B1BF40D
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 09:47:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AEE7E204AD
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 09:47:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id swUgPrwU96PQ for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 09:47:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.17.12])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A3FD204A5
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 09:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1561369619;
 bh=lzyy9j7qnXqsvAbV76zCce0wMX+0BQGE8HteHYxHRGQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=pHGrb80awqEoTQ2WTdj5YtnMWnHcsYlKURR2Cek0xB5oEyxkYKDlfWB5lGrdqjyk1
 PkbMK7YAWTOA8M3iPrdCtevPsaL4cLUUYRjkDenNhCXuCPKsvR6iXuF9maBZd2CG1w
 vFJW4R/afwfNlrj40WWLWJrfoj4jMBo9a53QSGFQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from lab-pc08.sra.uni-hannover.de ([130.75.33.87]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0MUFGo-1i6OuH3DHe-00R3Wg; Mon, 24 Jun 2019 11:46:59 +0200
From: =?UTF-8?q?Christian=20M=C3=BCller?= <muellerch-privat@web.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] drivers/staging/rtl8192u: adjust block comments
Date: Mon, 24 Jun 2019 11:46:38 +0200
Message-Id: <20190624094640.5459-1-muellerch-privat@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620113308.GA16195@kroah.com>
References: <20190620113308.GA16195@kroah.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:LbTnXBDz6pMGBFVKewlRvSH5QnM8/tq+wHSt2/fIhFXqTGjGumT
 hcEoDIJ/cUliTFC38xixU44E5siemKomEAarNnQQH8WZDQDeNgBjn95NYnB9LYEMuXco68R
 K44qIjV1dXESxbDPVUOI8/fcmP18nLynFNnBYqPAouIbWexQ4peptEqAa0mWyIFXScimQnt
 U4yJ0OCZvSWdXEeu8GvEg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:wvBOKAObEwQ=:l2pNXkW07JEiXA+GGYOcLa
 R1fvRyb2YOKIp/HUB5y0tQUm8x8MCoa46vGkpEVZU9j4FXU1KfqCSfF+deR2SLhi3USy9BSLh
 0iyK02bl4LVCOHbP43qJMUCU4HGldYm5aneEuRxC1yXQw2KdukAuDx+DEXII95+DBxb5IKf0p
 oLf7q5bsG7G2dsSgI2x9wxm7TPOr2xPKarMxpkYJmZwc8kdfPZvRp41bKTSIO5K+++utbAWP6
 LN2eE9cXOwR6dr5r243wkI2oTnlDfBIy+qKRoUU50yms+KYTMYf0XWJMXcIniP+yQSvjy5tsv
 euwOw8EP58dZZjo20OovcN+yCV3hMVgU/mBMwergJw20s5MwjlXrVtq39bNXs5p6hka6sSIRz
 tiHaL58V0Khm2d8H1dtMBgXsGdQhvyRq2KEIxeK7WPNODdshxz3bKK/dW4dHIWG75pML/6Ux9
 i72ajG5h7LNIy0G124q0ivO+t9Nz6Ts2ZLG1BEY+MlW4PuDEQyvCLIrYF8gHRnoo1U5YhQbH5
 cl46ITxxxlBuO7fRhmDIIU+ypIYEKIAJ9KPtrg/VwVGTojnHkskyhTy4K9KPweihz4E6+ehV6
 yhwvvoxVb0buaF9RB6RTvNwhfiw0ZTq+pcRMF8+R5DLs50Dy03R98np4Ma2gPEfGMUsRhoTE4
 MXxlLcD/rKrxBqOmEbh+cHHlqXEYbPS9Eyms31D+2im7kmIEm6Dq+1f6zlI6ug8Y+cRv3Vk87
 U1hsBYEyNl8JSWc/22Mi9p24GXfOV135W8pMjGMS8rD6DdMG/g+CbGMyWMAnrj3Rrazn/ZHur
 5BR3jJSNwjIcz9+OEVTmS6bMoB2sLN/4SlM30Hlz6yZvlvvPgiDicf7i8Zt8fV3iFZsfYtITF
 JZbMl2jkaXtk+QFo6hUthcMO1c5mnFu8VHPGskhal5b3sj/nRDJhE5Etb/xNZOd0t6ptK2dAT
 FKaDbPZ/rr91wakaz2DuZIZdhxKdcGIfZIoLqQMPaRxlRFFEa0V41
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
Cc: devel@driverdev.osuosl.org, felix.trommer@hotmail.de,
 linux-kernel@i4.cs.fau.de, linux-kernel@vger.kernel.org,
 johnfwhitmore@gmail.com,
 =?UTF-8?q?Christian=20M=C3=BCller?= <muellerch-privat@web.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QXMgcGVyIHRoZSBsYXN0IGNvcnJlc3BvbmRlbmNlIHdpdGggR3JlZywgaGUgcG9pbnRlZCBvdXQg
dGhhdCB0aGUgd2hvbGUKZHJpdmVyIHJ0bDgxOTJ1IHNob3VsZCBiZSBtZXJnZWQgc29tZSBkYXkg
aW50byBkcml2ZXJzL25ldC8gYW5kIHRodXMKaW1wbGVtZW50IGRpZmZlcmVudCBzdGFuZGFyZHMg
cmVnYXJkaW5nIG11bHRpbGluZSBjb21tZW50cy4KQmVjYXVzZSBvZiB0aGF0LCB3ZSBkaWQgdGhl
IGV4YWN0IG9wcG9zaXRlIG9mIHdoYXQgd2UgZGlkIHRoZSBsYXN0IHRpbWUsCmFuZCBjaGFuZ2Vk
IGNvbW1lbnRzIHN1Y2ggdGhhdCB0aGV5IG9iZXkgdGhlc2Ugc3RhbmRhcmRzLgoKQWxsIG11bHRp
bGluZS1jb21tZW50cyBpbiB0aGlzIGZpbGUgbm93IGxvb2sgbGlrZSB0aGUgZm9sbG93aW5nIGV4
YW1wbGU6CgovKiBNdWx0aWxpbmUgY29tbWVudHMKICogaW4gcjgxOTJVX2RtLmMKICogbm93IGxv
b2sgbGlrZSB0aGlzLgogKi8KCkNocmlzdGlhbiBNw7xsbGVyICgyKToKICBkcml2ZXJzL3N0YWdp
bmcvcnRsODE5MnU6IGFkanVzdCBibG9jayBjb21tZW50cwogIGRyaXZlcnMvc3RhZ2luZy9ydGw4
MTkydTogYWRqdXN0IGJsb2NrIGNvbW1lbnRzCgogZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJ1L3I4
MTkyVV9kbS5jIHwgOTcgKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDM5IGluc2VydGlvbnMoKyksIDU4IGRlbGV0aW9ucygtKQoKLS0KMi4xNy4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
