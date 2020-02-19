Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2546A163FD8
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Feb 2020 09:58:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 058558790D;
	Wed, 19 Feb 2020 08:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dXuIrKi8GZGQ; Wed, 19 Feb 2020 08:58:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F1C8878A8;
	Wed, 19 Feb 2020 08:58:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6282A1BF573
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 08:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 59199865A1
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 08:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VWujrUyesHrc for <devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 08:58:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5D1B08653D
 for <devel@driverdev.osuosl.org>; Wed, 19 Feb 2020 08:58:42 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id s10so5539791wmh.3
 for <devel@driverdev.osuosl.org>; Wed, 19 Feb 2020 00:58:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=zdxUWMWXTEs/zs0LJh1bxLoOHpDg1k5nkLimqXptzik=;
 b=gakJGSlfyhoGxBxE5gzJWtNNI6sjibrl3uduJk0it9nnXsPTsL/yVcjKLPM9JpAjB4
 hRZ+zkD3i0UWCNqW8JtaM9jld/sydW+zXCryxsUE8ho3l9L3WcVGZQ7tV5708SSsY2PK
 sfVBZg23FOOm05Al/FOi+ufpKbw0GzDzIREw9gpJBZEDURMMD/p/JduUB6yAZczAaByZ
 u3BhqEm4KuArJ7ZluB2YDgiOwbq+zwSM7QsjO5pHxMCnWJ6odeilRG1eyDs5XOc0DoBK
 BCt837j3E6xH2mJ4pFsivqq4EeBo1e7y4U/QLUUKNQBm9TAVHdUVn8Ea3o13z72NT6iS
 VjCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=zdxUWMWXTEs/zs0LJh1bxLoOHpDg1k5nkLimqXptzik=;
 b=BCoQui/i7kZqMwEtqbHd3KUc3UeVbrsMAPWs7v/1qZ+FNtG86AwVaZr0NBtEx40+ua
 86b/MB3tHQ3IfqfapMxvomUu5Vifqjz1M0zU6iQ00l4refauUxMiO9B/SfLVsAMErSv+
 +Y68TJwR/b1MdUgqZ0iUtvrJMzwei8+wEA+sxrSwqT9r4CC21oUNbxd1D7XjRVNlD4DT
 Oqw5uYcxMXuYf9nPCCoBk8EmIgmtddCN5LPLj4D9wntgx8e3HdWVCID56IFlAWP3k9U+
 eY0Uj8fQVCLSbO26apAKlOloQCJUhSJtCc2osdom29zda1LSjCX8Tf1xQZ6LnqIZzaxl
 TWqQ==
X-Gm-Message-State: APjAAAWKMafYeHG7g/gQL2ZFajgsW3udrTwRIMrb+KUCmB4fz8/uWJ86
 /DM260bmbZclXBjSFZ/fqDLEXGV29QTjm8Gt2/w=
X-Google-Smtp-Source: APXvYqzRktGvI6LVzFprTUG6z94vo0L22lPess/h6iDXZYdkIGoAKAYQNW0jcH0/HyoDkrsWp+jb17zedyxUrC4g9+8=
X-Received: by 2002:a1c:a553:: with SMTP id o80mr8456695wme.94.1582102720807; 
 Wed, 19 Feb 2020 00:58:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a5d:4e12:0:0:0:0:0 with HTTP; Wed, 19 Feb 2020 00:58:40
 -0800 (PST)
From: AISHA GADDAFI <mrabdoutoure@gmail.com>
Date: Wed, 19 Feb 2020 00:58:40 -0800
Message-ID: <CANku-e=5mMRnF0CLm++ety1_G+aT5_MzkU908zimJG5e=Xp1Fg@mail.gmail.com>
Subject: Lieber Freund (Assalamu Alaikum),?
To: undisclosed-recipients:;
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
Reply-To: ayishagddafio@mail.ru
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkxpZWJlciBGcmV1bmQgKEFzc2FsYW11IEFsYWlrdW0pLAoKSWNoIGJpbiB2b3IgZWluZXIg
cHJpdmF0ZW4gU3VjaGUgYXVmIElocmVuIEUtTWFpbC1Lb250YWt0IGdlc3Rvw59lbgpJaHJlIEhp
bGZlLiBNZWluIE5hbWUgaXN0IEFpc2hhIEFsLVFhZGRhZmksIGVpbmUgYWxsZWluZXJ6aWVoZW5k
ZQpNdXR0ZXIgdW5kIGVpbmUgV2l0d2UKbWl0IGRyZWkgS2luZGVybi4gSWNoIGJpbiBkaWUgZWlu
emlnZSBsZWlibGljaGUgVG9jaHRlciBkZXMgU3DDpHRsaWJ5c2NoZW4KUHLDpHNpZGVudCAodmVy
c3RvcmJlbmVyIE9iZXJzdCBNdWFtbWFyIEdhZGRhZmkpLgoKSWNoIGhhYmUgSW52ZXN0bWVudGZv
bmRzIGltIFdlcnQgdm9uIHNpZWJlbnVuZHp3YW56aWcgTWlsbGlvbmVuCmbDvG5maHVuZGVydHRh
dXNlbmQKVW5pdGVkIFN0YXRlIERvbGxhciAoJCAyNy41MDAuMDAwLjAwKSB1bmQgaWNoIGJyYXVj
aGUgZWluZQp2ZXJ0cmF1ZW5zd8O8cmRpZ2UgSW52ZXN0aXRpb24KTWFuYWdlciAvIFBhcnRuZXIg
YXVmZ3J1bmQgbWVpbmVzIGFrdHVlbGxlbiBGbMO8Y2h0bGluZ3NzdGF0dXMgYmluIGljaCBqZWRv
Y2gKTcO2Z2xpY2hlcndlaXNlIGludGVyZXNzaWVyZW4gU2llIHNpY2ggZsO8ciBkaWUgVW50ZXJz
dMO8dHp1bmcgdm9uCkludmVzdGl0aW9uc3Byb2pla3RlbiBpbiBJaHJlbSBMYW5kClZvbiBkb3J0
IGF1cyBrw7ZubmVuIHdpciBpbiBuYWhlciBadWt1bmZ0IEdlc2Now6RmdHNiZXppZWh1bmdlbiBh
dWZiYXVlbi4KCkljaCBiaW4gYmVyZWl0LCBtaXQgSWhuZW4gw7xiZXIgZGFzIFZlcmjDpGx0bmlz
IHp3aXNjaGVuIEludmVzdGl0aW9uIHVuZApVbnRlcm5laG1lbnNnZXdpbm4genUgdmVyaGFuZGVs
bgpCYXNpcyBmw7xyIGRpZSB6dWvDvG5mdGlnZSBJbnZlc3RpdGlvbiBHZXdpbm5lIHp1IGVyemll
bGVuLgoKV2VubiBTaWUgYmVyZWl0IHNpbmQsIGRpZXNlcyBQcm9qZWt0IGluIG1laW5lbSBOYW1l
biB6dSBiZWFyYmVpdGVuLAphbnR3b3J0ZW4gU2llIGJpdHRlIGRyaW5nZW5kCkRhbWl0IGljaCBJ
aG5lbiBtZWhyIEluZm9ybWF0aW9uZW4gw7xiZXIgZGllIEludmVzdG1lbnRmb25kcyBnZWJlbiBr
YW5uLgoKSWhyZSBkcmluZ2VuZGUgQW50d29ydCB3aXJkIGdlc2Now6R0enQuIHNjaHJlaWJlIG1p
ciBhbiBkaWVzZSBlbWFpbCBhZHJlc3NlICgKYXlpc2hhZ2RkYWZpb0BtYWlsLnJ1ICkgenVyIHdl
aXRlcmVuIERpc2t1c3Npb24uCgpGcmV1bmRsaWNoZSBHcsO8w59lCkZyYXUgQWlzaGEgQWwtUWFk
ZGFmaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
