Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D53C87E6643
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Nov 2023 10:08:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E55E41BB9;
	Thu,  9 Nov 2023 09:08:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E55E41BB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gyoK4OLpfpmj; Thu,  9 Nov 2023 09:08:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E62F441B23;
	Thu,  9 Nov 2023 09:08:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E62F441B23
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 942421BF40E
 for <devel@linuxdriverproject.org>; Thu,  9 Nov 2023 09:08:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 793E6818D0
 for <devel@linuxdriverproject.org>; Thu,  9 Nov 2023 09:08:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 793E6818D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P2QfGKyYeGKx for <devel@linuxdriverproject.org>;
 Thu,  9 Nov 2023 09:08:33 +0000 (UTC)
Received: from mail.synergyflux.pl (mail.synergyflux.pl [51.38.99.212])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7628D818A7
 for <devel@driverdev.osuosl.org>; Thu,  9 Nov 2023 09:08:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7628D818A7
Received: by mail.synergyflux.pl (Postfix, from userid 1002)
 id CCBC52959C; Thu,  9 Nov 2023 09:06:43 +0000 (UTC)
Received: by mail.synergyflux.pl for <devel@driverdev.osuosl.org>;
 Thu,  9 Nov 2023 09:05:59 GMT
Message-ID: <20231109074500-0.1.80.19b37.0.14j6fq80e2@synergyflux.pl>
Date: Thu,  9 Nov 2023 09:05:59 GMT
From: =?UTF-8?Q?"Konrad_Zieli=C5=84ski_"?= <konrad.zielinski@synergyflux.pl>
To: <devel@driverdev.osuosl.org>
Subject: Instalacja pv
X-Mailer: mail.synergyflux.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=synergyflux.pl; s=mail; t=1699520823;
 bh=n9RRp8MlabRDJBtJNro49Rmci90RtotaZYZ8+xo6WI4=;
 h=Date:From:To:Subject:From;
 b=NX5d8fQNhWkkp2p+9bhY//fImJ4J1GUuqKkcApc/gfAzOZVk1rtFZtNp4F8QVbRLf
 Rws7Z1qk7N21C9FmMJykG1X08MYGmSbtgf7Q3a07AqUqZW6+z4mX8cxxJ8O/xzBYr+
 dELlEFWxkBj+w96I8wthbuDIgXYnhvkUUQudtG1EXurZgaHiQ/aYd5i4Z0tuk+BxwT
 EfM/sB+sUmoUK414uDwYZYgQcEbXptmKr+9vBOdpWr7uECVHMEgyZjufgTUCn16Q56
 tbrlmVbLT8NkVfzMuk+Zpxp6rSpunPRO/7LJkKQNHzpfq6tVAHVLHAbEbARBD/qbqK
 ffghsH3zkaosQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=synergyflux.pl header.i=@synergyflux.pl
 header.a=rsa-sha256 header.s=mail header.b=NX5d8fQN
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RHppZcWEIGRvYnJ5LAoKY3p5IHPEhSBQYcWEc3R3byBvdHdhcmNpIG5hIG5pZXpvYm93acSFenVq
xIVjxIUgcm96bW93xJkgbmEgdGVtYXQgZm90b3dvbHRhaWtpPwoKSmFrbyBmaXJtYSBzcGVjamFs
aXp1asSFY2Egc2nEmSB3IGluc3RhbGFjamkgaSBzZXJ3aXNpZSBuYWpsZXBzenljaCBqYWtvxZtj
aW93byBwYW5lbGkgc8WCb25lY3pueWNoIG5hIHJ5bmt1IGNoY2lhxYJieW0gcHJ6ZWRzdGF3acSH
IHByb3BvenljasSZLCBqYWvEhSB3c3DDs2xuaWUgeiB6ZXNwb8WCZW0gcHJ6eWdvdG93YWxpxZtt
eSBkbGEgUGHFhHN0d2Egb2JpZWt0dS4KCkLEmWTEmSB3ZHppxJljem55IHphIHdpYWRvbW/Fm8SH
IG9kIFBhxYRzdHdhIGN6eSBtb8W8ZW15IHBvcm96bWF3aWHEhy4KCgpQb3pkcmF3aWFtCktvbnJh
ZCBaaWVsacWEc2tpIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
