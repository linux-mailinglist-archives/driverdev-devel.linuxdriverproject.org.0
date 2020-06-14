Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 381A61F8A8E
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jun 2020 22:13:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E38387E5E;
	Sun, 14 Jun 2020 20:13:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oYzx8keruzS7; Sun, 14 Jun 2020 20:13:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE9BD87C30;
	Sun, 14 Jun 2020 20:13:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD5F71BF368
 for <devel@linuxdriverproject.org>; Sun, 14 Jun 2020 20:13:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B762D86AB7
 for <devel@linuxdriverproject.org>; Sun, 14 Jun 2020 20:13:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o17IvX2_xyXr for <devel@linuxdriverproject.org>;
 Sun, 14 Jun 2020 20:13:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
 [209.85.222.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 95ABC86AB6
 for <devel@driverdev.osuosl.org>; Sun, 14 Jun 2020 20:13:30 +0000 (UTC)
Received: by mail-ua1-f66.google.com with SMTP id x14so1399927uao.7
 for <devel@driverdev.osuosl.org>; Sun, 14 Jun 2020 13:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=MRJYdBEWDkphEZG/UEdwwg3luf4wsGYhc8hRIEMMM04=;
 b=nrh999f/VxEIRD3bArnI6rkQrxIIstgvSJdbmuUmz2RaZ+cIhnPcXbaTHV5mwCdC9/
 mGCUZgSFTWWoc7yUzzg6DWwAGhqKhy86kfvU/3udW6oaNk0YH+LelGZK/DYRW4MCqaSn
 hIlCTinhrn2ZTBwshHoTAimV4K58m1bXWGoRPDKd/ZQrG97BDLdK+z93a8ytIZKEXiX1
 OOnX6mOPotkwJvetd0yGOCK8sf0/+9atb5rern53yRvEVuritJeJTeaB0V1XSOjn76Tf
 Zs/owV/bM68PqEFdYfx2n8JyQg0znr9toV03ZcYRMFbxO713Swn7m1PWDZyT0ZywkQHi
 BNaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=MRJYdBEWDkphEZG/UEdwwg3luf4wsGYhc8hRIEMMM04=;
 b=ZNrVZiyts7e8DbjV87ia04mB1bsd3WVFvxvnJAtJ7IxGi772NI5t53huhgnsPCUMqW
 uRcJh91x+ALuP+kS/NTtjjjTPPHzf1CxkH4G+9VCNVy7GKRroOh0lcOb7pt2X2ctIfkN
 9vi7hmFy37NSd2m0fPfbIgXhVOrrY16QyTCGO8pts8RFtrxUlTY2Q9UzSn65CBBIwxWE
 yCh1iTR+C05yJtBD+JO5ONW05w+YE9kpaeUbHuntzcCABXa4WuUaWwE8/2RHx+GxLawT
 ENx5gDvdbYtqh3K1g7MijKl1RQl8x8sphKswIjGOZ2e+ntKv2YbgqyNECKfe8855auH3
 Q9cQ==
X-Gm-Message-State: AOAM533Z0nG4sNEAlybpsmQuSyrs0Fu/ZEiYmmi2l+S8asxIBpy8+83p
 Osdg3UAQOd1EkHpaAvvv2xIZbZy2wVmytQX8Y88=
X-Google-Smtp-Source: ABdhPJzTJaoTHImt4mk90iLRtZ/9E5fXFfH2cMFLlGghZ9qDatgJwjMDGAxqQQn4ag2RGMpkS4hQ1jThK5lZBgfe2Z0=
X-Received: by 2002:ab0:a81:: with SMTP id d1mr17219890uak.67.1592165609594;
 Sun, 14 Jun 2020 13:13:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:7d16:0:0:0:0:0 with HTTP; Sun, 14 Jun 2020 13:13:29
 -0700 (PDT)
From: Frau JINGHUA Liu Yang <robertoquimbo100@gmail.com>
Date: Sun, 14 Jun 2020 22:13:29 +0200
Message-ID: <CAOO-5w0jEMKm=TQsv_dDHEdTDW8Do9KtRn5itTUVJQ-33aX63Q@mail.gmail.com>
Subject: 
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
Reply-To: jinghualiuyang@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gClNjaMO2bmVuIFRhZywKCiAgICAgICBJY2ggYmluIEZyYXUgSklOR0hVQSBMaXUgWWFuZyBm
w7xyIGRpZSBDSVRJQkFOSyBPRiBLT1JFQSBoaWVyIGluCmRlciBSZXB1YmxpayBLT1JFQS4gSWNo
IGhhYmUgZWluZW4gR2VzY2jDpGZ0c3ZvcmdhbmcuIEthbm4gaWNoIElobmVuCnZlcnRyYXVlbiwg
ZGFzcyBTaWUgZGllc2VuIEJldHJhZyB2b24gJDkuMzU2LjY2OSBVU0Qgw7xiZXJ3ZWlzZW4/IFdl
bm4KU2llIGJlcmVpdCBzaW5kLCBtaXIgenUgaGVsZmVuLCBtZWxkZW4gU2llIHNpY2ggYmVpIG1p
ciwgZGFtaXQgaWNoIFNpZQpkYXLDvGJlciBpbmZvcm1pZXJlbiBrYW5uLCB3aWUgd2lyIGRpZXNl
IFRyYW5zYWt0aW9uIGFtIGJlc3RlbgpwZXJmZWt0aW9uaWVyZW4ga8O2bm5lbiwgZGFtaXQgZGFz
IEdlbGQgYW4gU2llIGluIElocmVtIExhbmQgw7xiZXJ3aWVzZW4Kd2lyZC4KClNjaMO2bmUgR3LD
vMOfZS4uCkZyYXUgSklOR0hVQSBMaXUgWWFuZwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
