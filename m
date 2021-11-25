Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5884645E040
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 19:06:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD2BE4055A;
	Thu, 25 Nov 2021 18:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ps9jIh6_Lahe; Thu, 25 Nov 2021 18:05:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BA704016A;
	Thu, 25 Nov 2021 18:05:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 581051BF94B
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 18:05:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50D2D4016A
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 18:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wCfiLu36qR1I for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 18:05:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91CC4400A4
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 18:05:45 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id e3so28858626edu.4
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 10:05:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=YA10lrYiqk476DuRmvfNxYVd1NlV6feGUPAxirj/Ezw=;
 b=FRwHuw194WvgClr7ku9JKplyzSLgfqzrsnk3JvEQFy4aGYURBXM8LoKG/pwlzRPwm3
 Ac5XBxV0PcGW2q1/DX9ucVIo4Vwsq8//5pwXxLODAQ+snOS9oMxI12/f028eJugIr6lu
 jFa5KPtCs2kYxxvPrsBcWtkn+HLC9WDGxag61k4fauVTSJ5e7JZXMVICCUrk1+uRp1d+
 SmL6RPHXpiHFDklYpahgC6W+MT0en1ehgaLsdUibcKpu0hnaaJPkgmj/8nwofN1w2Vyu
 b2foOMttDnzpU4m944GeDYACVzt2saVq1G2VE76TkFJ7NOWrHu/W+AZJ/wSO6LEdkLhE
 Hosg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=YA10lrYiqk476DuRmvfNxYVd1NlV6feGUPAxirj/Ezw=;
 b=jo9xE+Z0psEByAnpw69dACPwqmW8QbBbcOEwlBTbcKqMcgw1Ldxg7l8PHR4nc9k+A5
 /tectsRpDdWGWMlo22b/Z6HHWXybclKOJZhRU3/2xJyDV7iQrp31gj/VCgUEjnD54/AS
 yglD+3cvghoAABK0QzChP02u+tJQy05S5WwTT4K3ezUZDRpf/Ab7xxsjZULUj6zZIIKk
 tLsdIJuTUw3242NJJ+3nLUY/QYLMSYhFImcEMCUDywAnU+Zfc8YpMs2k4cN/eoC8csgZ
 ySVzSCjJipb88FUhfHZBl2rd2S0UqCA8YUCSckK7m6ll/EjqpsxcgVRb7pt4vnY9rvHh
 rHxw==
X-Gm-Message-State: AOAM5310gILLe0plMNTdSK1rtTjn5eOrOU3aJu5ACk+Y4wiBkyId0OFM
 g/N6rRO2nrgvWElfEOKZ8DhFfNmwjyCAthNJ8Wk=
X-Google-Smtp-Source: ABdhPJxJv7bT5twuiOsOeeVA5RyEKPom9f/msCF9zK4ClvCEcP5Ig6II3P0UkwqZFEjbOy8Ck4EcQWmTKNrNkZPYhJI=
X-Received: by 2002:a50:d741:: with SMTP id i1mr40670497edj.37.1637863543505; 
 Thu, 25 Nov 2021 10:05:43 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:907:728f:0:0:0:0 with HTTP; Thu, 25 Nov 2021 10:05:43
 -0800 (PST)
From: Alima Anwari <franmerii42@gmail.com>
Date: Thu, 25 Nov 2021 19:05:43 +0100
Message-ID: <CAOoRhhHyAyxMEr-1FUNEZaU4ehuFPeNkJwGMs=MmeruWMGaTuw@mail.gmail.com>
Subject: =?UTF-8?B?zprOsc67zq4gzrzOrc+BzrE=?=
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
Reply-To: alimaanwari48@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gDQrOk861zrnOsSDPg86/z4UgzrHOs86xz4DOt8+Ezq0gz4bOr867zrUsIM61zq/OvM6xzrkg
zrcgQWxpbWEgQW53YXJpIM6xz4DPjCDPhM6/IM6Rz4bOs86xzr3Ouc+Dz4TOrM69LCDOsc+AzrHO
vc+Ezq7Pg8+EzrUNCs+Azq/Pg8+JIM+DzrUgzrXOvM6tzr3OsSDOrc+Hz4kgzq3Ovc6xIM61z4DO
tc6vzrPOv869IM62zq7PhM63zrzOsSDOvc6xIM68zr/Ouc+BzrHPg8+Ez44gzrzOsc62zq8gz4PO
sc+CLiDOuM6xIM+AzrXPgc65zrzOrc69z4kNCs6zzrnOsSDPhM63zr0gzrHPgM6szr3PhM63z4PO
riDPg86xz4IuDQrOlc+Fz4fOsc+BzrnPg8+Ez44uDQrOkc67zq/OvM6xLg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
