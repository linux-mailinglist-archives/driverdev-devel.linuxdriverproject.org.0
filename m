Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5413C2224D6
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 16:06:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5C0A08B1B7;
	Thu, 16 Jul 2020 14:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hR+JMOmm1o7l; Thu, 16 Jul 2020 14:06:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 64A6D8B127;
	Thu, 16 Jul 2020 14:06:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6BB7C1BF2F6
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 14:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6885381DED
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 14:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sEhnvxvL6ulW for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 14:06:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 70FC081B52
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 14:06:40 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id d18so6142226ion.0
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 07:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=RFLcuq346FHUN0mOzx9R2eN1vSFeU0G93W+O1T3tkmE=;
 b=M71XSQAI37DSUS/7k89mVn775IgaTOZadlh7H9HVYw1/4klSlNHV9oge7Q4NIc2RpI
 ynWb0Z5apfSDc1Yra3U2P5hsQ2hdcrGlokpizeTUH4JnlYOJcjxSzxPRGx9WomrgfXyT
 GnIgZA6hhRRhsysCGGOg3o+h+mso15oRCmdCi5J8cn28ZbSzafFQKzxRNFKtvUDs/7yP
 Az5kT/fDZQ38V01W2dLZryiYjwkJmm7rnyNyU0AKe3OOtx6er6nHkP+VMe1ty/plIoEZ
 j74hC2I1FWwBS+7lRIPaJv6E9GrHLn1ld2+ouFhGnzSUonJJ+UFulpk1/a0DmQz7gXn6
 OcEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=RFLcuq346FHUN0mOzx9R2eN1vSFeU0G93W+O1T3tkmE=;
 b=GJESp5LRDh7zpKJmxge6TCEtxQ9dmz3lTyB2kiVlnzcwlrOicGHmBRVCMUg9RRnZfu
 dLIPiWJ4k4BAO96j8x18LKM6vD0w1mydM1wgRszjtkjD567+EmR9I6eo1I1yMQfyxsDx
 xDSsXh3De518X0lg65ZUiQxgy17Rtkh7MjlvlPqMEt+hynLd3RPPSDAgrDiNMRsjFhpP
 25BEabCKwlmVVG/eUTzdT+LEhXoHMHG0WbpZJAlp/l8aWIQF6cbabDdGh5/LTKxZu4wh
 CaU/YiM9LWRCLzpJdh0X0BmeFIgOxQDKfW4jpEaJJEjBgpAawsEC3GMu8njLx5A0LP5e
 FpbA==
X-Gm-Message-State: AOAM531901RWIFUq0z2FhnhHTOXXCeX0po5pEv8Q2UAsuVsDoGCmnvgU
 sIKldEJm35sM0LzrES8gS8wCPdhOudP1VyL7KpI=
X-Google-Smtp-Source: ABdhPJymXgtAJT2shb2VUr/ciSVTp42yWRnlZWQHGD+s4RZysbNNq1g+zvT4w5OI3jnu+GMJDfQLN4u7rRa22YXIRAo=
X-Received: by 2002:a05:6602:2e8d:: with SMTP id
 m13mr4700232iow.100.1594908397752; 
 Thu, 16 Jul 2020 07:06:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:8b44:0:0:0:0:0 with HTTP; Thu, 16 Jul 2020 07:06:37
 -0700 (PDT)
From: Frau JINGHUA Liu Yang <markwagoner047@gmail.com>
Date: Thu, 16 Jul 2020 16:06:37 +0200
Message-ID: <CAHOX1yq4eh57TZzme9RJY9CV7kCUVwV+hBaufitra8HCySxhrA@mail.gmail.com>
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

LS0gCi0gLQpHdXRlbiBNb3JnZW4sCgogICAgICAgIEljaCBiaW4gRnJhdSBKSU5HSFVBIExpdSBZ
YW5nIGbDvHIgZGllIE1pdGFyYmVpdGVyIGRlciBDSVRJQkFOSwpLT1JFQSBoaWVyIGluIGRlciBS
ZXB1YmxpayBLb3JlYS4gS2FubiBpY2ggR2VsZCB2b24gOS4zNTYuNjY5IFVTRArDvGJlcndlaXNl
bj8gVmVydHJhdWVuPwoKRGVpbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
