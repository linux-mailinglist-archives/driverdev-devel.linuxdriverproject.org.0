Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EF31F83F7
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Jun 2020 17:37:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD68B87B1F;
	Sat, 13 Jun 2020 15:37:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2eb4gpQCeeTX; Sat, 13 Jun 2020 15:37:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1CA087330;
	Sat, 13 Jun 2020 15:37:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 13E861BF2EF
 for <devel@linuxdriverproject.org>; Sat, 13 Jun 2020 15:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0F8E5882C7
 for <devel@linuxdriverproject.org>; Sat, 13 Jun 2020 15:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kb-Tmj8A1YEP for <devel@linuxdriverproject.org>;
 Sat, 13 Jun 2020 15:37:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic306-20.consmr.mail.gq1.yahoo.com
 (sonic306-20.consmr.mail.gq1.yahoo.com [98.137.68.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9DDD8882BE
 for <devel@driverdev.osuosl.org>; Sat, 13 Jun 2020 15:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1592062636; bh=EdQ6J0sRRv3XBxt3j7IlulUVvRg4uKdicik//r5GkY8=;
 h=Date:From:Reply-To:To:Subject:References:From:Subject;
 b=hgXkWVa9fvC6PxSuomiSXx7SSHJ9NUGAfReAeLKT98CSBkNq1BQ3DgzwTYT+PmtUrb2TznLjQcb5bydseTjM+yOZcH6XOEaSVDs1a5tJu0LCMegN+4IEbxBGk02V6omKzGlT8kHLRY4yKUBdPwzNPl3furLxPSuapUE81UgvnzK0O4U2arA8bfwLRJI8pFrZ3wfg4wZhYrSigb+/CkwAHz6CkG0IFd1KNXdZ3OHCDaby/xtJY8TYfGLXR6JuUbKLAeKAIIbKJeugpDE548iV5kBKFMSQAv+HssEFwuhCm2oewMxmyzVpO+rMAi7t/ZCb9TlJRUoEAz+d3wHDiEhtgQ==
X-YMail-OSG: bPMiqXgVM1kaz47SqK9MOUmnJbg1x_zCob5ClTnd6mNhvOtfl7CpTbd6WFFYKWm
 N02F9Mk_5BHm.XQeHwPt97BMGv.NcPaLRVEi4MBdeUHhw7MSo60wPstoFoHDGHJy3MPOxqbAESWP
 YIyvPTnsZehMYChNsC1CLHk0z72n3AYVisCVXvKPT9B928QHczShIaAfvVX8VYYe_DWNKQEdgb7Y
 MAuogipQ.d2Bx_z3MNRJcDCaRt7hM7THE6qbdjTu9itVJThkmV3GdBpkWmOApZKYjp3reV71.8sQ
 mZgh9Myd3qvEZKwn8Yhme3SiaAn5X4grO2cMY4bF17NsgL85YisK_fHwK6P9xM1gkFXN9uT74Fwx
 eF_5UljzY0AepExWUHWvgX8.6l67t4Pz4cqH2VNTxruH.ff7v7BZJcY4E8jp4Izz.3xq4xUULvGE
 fYWaoOr6ILcAfEKKZwFtb0i2exz_5c8dtx9L2t3y3tU3rMTa5K19pfI6nIfki7zRtZlfwag203au
 Pm2bo1A.5boOvMzNVlQ3rVHX9P3NDFbrL39jJxPsnUxkmtoTLiOAZyFUPEiisIowP0e9bP8kRbOS
 M3SZRzmuGWxJVExaMF8CUZvTC4rBfUxa0b4zZnATTlCvcSJvGfAFdkqNt6nYJSoS32daso_cdpqO
 FkgheooSIoTg3Sr_fZdWL9PprBCJ9wSqhPmpv.buSzmcKqbY_0W5oUnfnc.lekVC1cFXoXP1Y51G
 ZkGUb._GzTE7sUmFb9krNugOUFuQlphoYVdqEA56LvHLIhAKWDUsaMQiTKUu86EfAJ_QjK3ps45_
 mBxLvdFlACMiQ0bc3h9BQryoIFO4P1rgamQkzZ99hS9M0mMKqlbijtcUkblu76WFlWWfGS8Y4F7w
 QX5JSNIy4R5shFecYLJEI2kDduAKp80o9xOZACf9K8QiZkUUHyZgwulFQXZKnSKKbiuek5igc7sE
 Lt.73acGpgErY9JIUgWiNv8zWMrf.75zVlztc9_gVERJhWucrdUFPuMamPbh1Vpj.sk9gxyvGGZ.
 RFGov2rP.FC8epEzDKIqmee6sh.SebwDoptEQ6avwjz0QAFfYdd9rKv0rWx1zYB50jqxeypqwdoY
 Nezn9bPQwGntr9U_kMWQV69Xzcd3HN05XgyuIP7njaQhhc_XkySYiXK8Q62dGEqoIc.TQfde5zVi
 vELp3G41NmvOTpH752sTX7EydG1KPbwb5rES4L2e8RhKR_GJg_32sjcTnk4WFODpSq6TEF1uJn.d
 M3v9D5RIYfWeIN4SJWeHptSEqeEfhNLgBBVFVDokVXs.Mgo7DnFK5jrHHQWnE7w--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.gq1.yahoo.com with HTTP; Sat, 13 Jun 2020 15:37:16 +0000
Date: Sat, 13 Jun 2020 15:37:11 +0000 (UTC)
From: Rose Gomo <rose_gomo101@yahoo.com>
To: rose_gomo101@yahoo.com
Message-ID: <1421986951.272985.1592062631383@mail.yahoo.com>
Subject: Dear Good Friend.
MIME-Version: 1.0
References: <1421986951.272985.1592062631383.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16119 YMailNodin Mozilla/4.0 (compatible; MSIE 8.0;
 Windows NT 6.1; Trident/4.0; GTB7.5; SLCC2; .NET CLR 2.0.50727;
 .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)
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
Reply-To: rose_gomo101@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBHb29kIEZyaWVuZC4KClBsZWFzZSBjYW4geW91IGhlbHAgbWUgdG8gcmVjZWl2ZSB0aGUg
ZnVuZCBJIGluaGVyaXRlZCBmcm9tIG15IGZhdGhlciB0byB5b3VyIGFjY291bnQgaW4geW91ciBj
b3VudHJ5IGZvciBidXNpbmVzcyBpbnZlc3RtZW50PyBSaWdodCBub3cgdGhlIGZ1bmQgaXMgaW4g
dGhlIGJhbmsgaGVyZSB3aGVyZSBteSBmYXRoZXIgZGVwb3NpdGVkIGl0IGJlZm9yZSBoZSBkaWVk
IGFuZCB0aGUgYW1vdW50IGlzIOKCrDIuNW1pbGxpb24gRXVyb3MgKFR3byBNaWxsaW9uIEZpdmUg
SHVuZHJlZCBUaG91c2FuZCBFdXJvcykKClBsZWFzZSBpZiB5b3UgYXJlIGludGVyZXN0ZWQgeW91
IGNhbiBjb250YWN0IG1lIGFzIHNvb24gYXMgcG9zc2libGUgZm9yIG1vcmUgZGV0YWlscy4KCkJl
c3QgcmVnYXJkcwpSb3NlIEdvbW8uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
