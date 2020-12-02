Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A9C2CC938
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 22:55:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2586987542;
	Wed,  2 Dec 2020 21:55:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fMvzeNDXyIHL; Wed,  2 Dec 2020 21:55:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E7E38753B;
	Wed,  2 Dec 2020 21:55:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DE6BB1BF34A
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 21:55:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DA21287542
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 21:55:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4savpDM7pE7M for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 21:55:53 +0000 (UTC)
X-Greylist: delayed 00:09:15 by SQLgrey-1.7.6
Received: from hex.unseen.dk (hex.unseen.dk [212.237.101.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 492E38753B
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 21:55:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hex.unseen.dk (Postfix) with ESMTP id 990DB11DA3FB;
 Wed,  2 Dec 2020 22:46:35 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at unseen.dk
Received: from hex.unseen.dk ([127.0.0.1])
 by localhost (hex.unseen [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6qEBB2FyEDon; Wed,  2 Dec 2020 22:46:35 +0100 (CET)
Received: from bsjohnson.unseen (unknown [10.0.0.72])
 by hex.unseen.dk (Postfix) with ESMTPSA id C6CAB11DA3FA;
 Wed,  2 Dec 2020 22:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=unseen.dk; s=hex;
 t=1606945594; bh=T/UwXSueSuSau4pzwxws5vR3ydYacy3jwNWkonR3tgs=;
 h=From:To:Cc:Subject:Date:From;
 b=O2c/oWEE+T7M6AXFOgHq9hZh3aQ4kYAU8lbaVFC8rMZBvSYqdcMBd+2736JX9ckIC
 U7k2KJzlsfmsC/SN0mus4oAWVcvBoCkH+fEII008a7XslTtFYtgk9bRm23u+OIbbwi
 iSv/Kjra5/iIDMnUhaWvZJf0rrdsgBy6q6YwoHNo=
From: =?UTF-8?q?Dennis=20Skovborg=20J=C3=B8rgensen?= <dennis@unseen.dk>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH] staging/vc04_services/bcm2835-audio: Parenthesize alsa2chip
 macro
Date: Wed,  2 Dec 2020 22:46:31 +0100
Message-Id: <20201202214634.186858-1-dennis@unseen.dk>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QWRkIHBhcmVudGhlc2lzIGFyb3VuZCB0aGUgYWxzYTJjaGlwIG1hY3JvIHRvIHJlbW92ZSBhIGNo
ZWNrcGF0Y2ggZXJyb3IuCgpTaWduZWQtb2ZmLWJ5OiBEZW5uaXMgU2tvdmJvcmcgSsO4cmdlbnNl
biA8ZGVubmlzQHVuc2Vlbi5kaz4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNlcy9i
Y20yODM1LWF1ZGlvL2JjbTI4MzUuaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy92YzA0X3Nl
cnZpY2VzL2JjbTI4MzUtYXVkaW8vYmNtMjgzNS5oIGIvZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2Vy
dmljZXMvYmNtMjgzNS1hdWRpby9iY20yODM1LmgKaW5kZXggMWIzNjQ3NTg3MmQ2Li41MTA2NmFj
OGVlYTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2JjbTI4MzUt
YXVkaW8vYmNtMjgzNS5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2JjbTI4
MzUtYXVkaW8vYmNtMjgzNS5oCkBAIC0yMiw3ICsyMiw3IEBAIGVudW0gewogLyogbWFjcm9zIGZv
ciBhbHNhMmNoaXAgYW5kIGNoaXAyYWxzYSwgaW5zdGVhZCBvZiBmdW5jdGlvbnMgKi8KIAogLy8g
Y29udmVydCBhbHNhIHRvIGNoaXAgdm9sdW1lIChkZWZpbmVkIGFzIG1hY3JvIHJhdGhlciB0aGFu
IGZ1bmN0aW9uIGNhbGwpCi0jZGVmaW5lIGFsc2EyY2hpcCh2b2wpICh1aW50KSgtKCgodm9sKSA8
PCA4KSAvIDEwMCkpCisjZGVmaW5lIGFsc2EyY2hpcCh2b2wpICgodWludCkoLSgoKHZvbCkgPDwg
OCkgLyAxMDApKSkKIAogLy8gY29udmVydCBjaGlwIHRvIGFsc2Egdm9sdW1lCiAjZGVmaW5lIGNo
aXAyYWxzYSh2b2wpIC0oKCh2b2wpICogMTAwKSA+PiA4KQotLSAKMi4yOS4yCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
