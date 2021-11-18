Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75785455AC1
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Nov 2021 12:40:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA09060796;
	Thu, 18 Nov 2021 11:40:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VJQb6_z3ILGJ; Thu, 18 Nov 2021 11:40:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 354446072F;
	Thu, 18 Nov 2021 11:40:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58EFE1BF239
 for <devel@linuxdriverproject.org>; Thu, 18 Nov 2021 11:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4877A6072F
 for <devel@linuxdriverproject.org>; Thu, 18 Nov 2021 11:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TeQMCVtBAhgd for <devel@linuxdriverproject.org>;
 Thu, 18 Nov 2021 11:40:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 91B666071A
 for <devel@driverdev.osuosl.org>; Thu, 18 Nov 2021 11:40:23 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id q25so13778742oiw.0
 for <devel@driverdev.osuosl.org>; Thu, 18 Nov 2021 03:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=N10Ik8i4pTfkLCjtwdmN2M7JDIIsmzYmpfVJ+R96Yo4=;
 b=PKZCH7fm02sge/SdZUh5lEowEmGbAwJS8tqV1IiEMr2tSaU3VO2AUBIWCHkZrj40zd
 mzs6a0SCHa27az6J9cv2xLzolLjrHhZ3dwYg4UP56qVT9JPDoj3qoAm6ViwhhWN9gE+1
 /iv2L9UN4U7a8B2FaFzPNXQj8zpXJEmTiM9FHoQoRZp3nhWGTNTejry+cgVgy18p6XcJ
 hQ9NHY10DJkIIxYejLYSCswxfXCAeb6IE0bJZ206QwT+VhDmhreppdfPzelWMyPLoIzn
 Wd1y7nioMg6WltwkorzwAQUzKhg0p8/eU9EhRJPEvziozkM609ulghs+MGhpSFNMwOh9
 008w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=N10Ik8i4pTfkLCjtwdmN2M7JDIIsmzYmpfVJ+R96Yo4=;
 b=lt6BUK6CufJlZeUi/8FKiPEjORj4k5Rgw1lV7m3Jls6yfA8Vr7SiIqoUYdGQs9yZMh
 MlyqCTrmnJ3UhuvNurWZPwaBRbjay6xMQAiW5X3K+pRr5OrTs6ViOVDfgUKXcfnJNLfS
 hYU3KtMm1nrKyrsLZSjkK8ZST0iTHXfY9/1+KprF/CYCfk0GMsdgiJTlkbyRzWdFaqPD
 GK4QZOOVpCA+mlfsdddlQ+weLwWOZMP/y+E+t5Klcfr6agLkgAVsMUlnzTeZhLGONS8v
 1CoV/mysfpqOqlx7YGRnY9bOPcKys4K3XYAilKpzfw2UQM/sEjkOHBp7JfPHnPSBymaT
 aIhw==
X-Gm-Message-State: AOAM530fiRJ1AiJ9bmVzuVMXPAotKyn+uokU4yPalFfTQQuIXtSxh1ci
 Pa3piGfNngyvigAT2aS1rZNCbe45KVD9GwyFErg=
X-Google-Smtp-Source: ABdhPJxF0knN4ghdJGBYXgPIEmt9Fpc6Fb5n3G5hwhrrV0S8As51GpB59LmN+WH8VfRiyJE1n4Ey0JM2PxDMsOu4Lso=
X-Received: by 2002:a05:6808:11c6:: with SMTP id
 p6mr7156763oiv.158.1637235622630; 
 Thu, 18 Nov 2021 03:40:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4a:ab85:0:0:0:0:0 with HTTP; Thu, 18 Nov 2021 03:40:22
 -0800 (PST)
From: United Nations Compensation Commission <alicebunmi14@gmail.com>
Date: Thu, 18 Nov 2021 03:40:22 -0800
Message-ID: <CAP48xSbipam699ma3iaaoT1bXXQxtGhSAOKqCwVvVMaJJq6AkA@mail.gmail.com>
Subject: =?UTF-8?Q?Beg=C3=BCnstigter?=
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
Reply-To: UNCC-CH@outlook.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkFjaHR1bmc6IEJlZ8O8bnN0aWd0ZXIsCgpCZXJlaXRzIHp1bSB6d2VpdGVuIE1hbCBpbmZv
cm1pZXJlbiB3aXIgU2llIMO8YmVyIGRpZSBIw7ZoZSBJaHJlcwpBdXNnbGVpY2hzZm9uZHMgaW4g
SMO2aGUgdm9uIDUuNTAwLjAwMCwwMCDigqwgKGbDvG5mIE1pbGxpb25lbgpmw7xuZmh1bmRlcnR0
YXVzZW5kIEV1cm8pLiBCZWFjaHRlbiBTaWUsIGRhc3Mgd2lyIHZvbiBkZXIKRW50c2Now6RkaWd1
bmdza29tbWlzc2lvbiBkZXIgVmVyZWludGVuIE5hdGlvbmVuIChVTkNDKSBhdXRvcmlzaWVydAp3
dXJkZW4sIElobmVuIElocmUgRW50c2Now6RkaWd1bmdzZ2VsZGVyIGluIEjDtmhlIHZvbiA1LjUw
MC4wMDAsMDAg4oKsIHBlcgpCYW5rw7xiZXJ3ZWlzdW5nIGZyZWl6dWdlYmVuLgoKV2Vic2VpdGUK
aHR0cHM6Ly91bmNjLmNoL2hvbWUKCkbDvHIgSWhyZSBHZWxkZm9yZGVydW5nIGtvbnRha3RpZXJl
biBTaWUgZGllIGZvbGdlbmRlbiBJbmZvcm1hdGlvbmVuCgpSZWdpc3NldXIKSGVyciBIYXJ0bXV0
IFdlbm5lcgpFLU1BSUw6IFVOQ0MtQ0hAb3V0bG9vay5jb20KRW50c2Now6RkaWd1bmdza29tbWlz
c2lvbiBkZXIgVmVyZWludGVuIE5hdGlvbmVuCgpNaXQgZnJldW5kbGljaGVuIEdyw7zDn2VuCkZy
YXUgU3VzYW4gQm9yb3dvc2tpLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
