Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA3C31E7AB
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 09:54:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D69046066B
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 08:54:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dDWVKSHAc8bG for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 08:54:26 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id B3D9D60650; Thu, 18 Feb 2021 08:54:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D892606C5;
	Thu, 18 Feb 2021 08:51:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 170171BF312
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 08:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0216986E68
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 08:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L1tu7twZe8+b for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 08:51:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 389C886E6B
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 08:51:14 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id r23so3060950ljh.1
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 00:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=+0DF9hijjTqUHkq/nrMIvOANFA2wqk8Qb18YMQWfNk0=;
 b=KQldZwc18SqWAImYY0w8AEM3UteCpuFkxY+Gd+5h87/IzU50dLMI+3/NgB0JUju872
 6mtBWu96/avT5fDAPXUXam6nwd5c2zAKGOwB07J6DCHUdYgYem7HAx+bNYZiSlckji82
 OW7zbj/qThM3KAvd8G/f7cRXx18kLgzGO5rhth5tRP+HKD4JrYgCwS+nZ3TAX1LeA2ob
 6cA/ROQKoAn9qN0frBX4GcJuMLwoAKnbAbkjJmDVYpVpvlAPcKlmp5yI9yOGttUJeFWB
 +HiH0XYF4RuJb5c/vINMloc1mf3+BURKEEs/llOeFMnpO1s/nEeQ0UPeslAA5ZxjmN2A
 0hVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=+0DF9hijjTqUHkq/nrMIvOANFA2wqk8Qb18YMQWfNk0=;
 b=WjHVIcpsUaM0ABuEIO1Y2wJu7b1sQL/VzeIqwnABbsFW4waMAEY1z1mQ+A1fOM+EP6
 VtVtCmeaUJZ2x7ayl3ErNnK/dsiu+AqbyB8dML03g0QEisXMmXR5rldLSH1EoA/qMUFG
 GUb/H+EKiAHYtx4aXKCgWVZWYVO+W6Z8yIVQhj70HoBcY7c2Roz19k1rlK/ljGXc7hhN
 JhUadlHH+3FyR6hI8UwVAoe87yTx8QYBv5RFS8pMEcHegvoG5yUtdT2MVo9mduT4RkAj
 +tLy0G88DANDSVMkWcHRJJAnMSYZhiH3Ui7ZUyczzXvpj2nchwQN+PQJ/+RcIsDiA1xe
 ZSyw==
X-Gm-Message-State: AOAM533dxEOapm8v+ROuRbq4Ldgs0WTE1VbD8tHwE3gfTDKbcEvDbDs1
 g/xMVAZrjtUV476SNbFfDNgSC2Z6SvggJqxoGrU=
X-Google-Smtp-Source: ABdhPJzmmTNC0y+HE2SACvYzD/UcgnGsqVOOulb5h39bS6rm8bAt7QrxKotovgtln9mwEiMANyDOP9Frwbxpu6VovD4=
X-Received: by 2002:a2e:596:: with SMTP id 144mr2036320ljf.258.1613638271916; 
 Thu, 18 Feb 2021 00:51:11 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9a:7587:0:b029:b5:d37d:b300 with HTTP; Thu, 18 Feb 2021
 00:51:10 -0800 (PST)
From: Aisha Gaddafi <mahasaliou99999@gmail.com>
Date: Thu, 18 Feb 2021 00:51:10 -0800
Message-ID: <CAMugOs_n+0iw9g4+3UTAmrQLvMZfGEPB6vTtbs14LqeCct+dVg@mail.gmail.com>
Subject: Lieber Freund (Assalamu Alaikum),.?
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
YW5uLgpGcmV1bmRsaWNoZSBHcsO8w59lCkZyYXUgQWlzaGEgQWwtUWFkZGFmaQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
