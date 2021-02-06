Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30121311E0A
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Feb 2021 15:55:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BC5468645E;
	Sat,  6 Feb 2021 14:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pVeWKFGAe9gT; Sat,  6 Feb 2021 14:55:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 87FAB85F8D;
	Sat,  6 Feb 2021 14:55:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 70AA71BF25F
 for <devel@linuxdriverproject.org>; Sat,  6 Feb 2021 14:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6D59A8707C
 for <devel@linuxdriverproject.org>; Sat,  6 Feb 2021 14:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id snvPqGP15x7x for <devel@linuxdriverproject.org>;
 Sat,  6 Feb 2021 14:55:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C692B8706D
 for <devel@driverdev.osuosl.org>; Sat,  6 Feb 2021 14:55:40 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id sa23so17721758ejb.0
 for <devel@driverdev.osuosl.org>; Sat, 06 Feb 2021 06:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=sY4fgq/DSyThalwU7QX+pWYKs/8sGH7ZznMUn5qQ1EY=;
 b=Oj1NooDuJhVNzbfRQae7N/DRxSBhziAtrV2t7sPiuysNSEB1Bq/QL2bQspKuCoVqlf
 ymBC0IBPQ/EA+JiCrDJsEySghsVWAHVNde56cu02ukG7X2bgzdKxHDuzRQlRcRjA83J7
 f0ATbGfenBmIau3ag1Ovy0EQ+CNpgVgPlaZHAtGM4/xivVXlY6v6Sd93TdmlNJCU0zet
 pe1vyNn2OlTNLLya3uEcJmXhJS/JEYBZsMAKlY3nvbVDqFpz7C0Y4CajEQStwcNnpadH
 tSpI4t+9bDdYitGM8GIP2blS04ueQSvFbETai1f/4oHLASje/RbKPZvGuUSGJdBKpaKl
 lB2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=sY4fgq/DSyThalwU7QX+pWYKs/8sGH7ZznMUn5qQ1EY=;
 b=DfpcCwCMIOy5V8AYzDTvsheex24RfPcl8JnwyMWyl2k7cK1MtVbnWvIocZG8M9duBe
 CcG3qXBerntN5FmNhFzRGN41FdA8haTqcKrir4kEeaaqnxHi1IVEVmVc6zT5iotmQEMq
 jRjTMPfRBxX2E7vIlQ1P/aa6CzJaDKkhHGwvrDW7fdbb4zM1rf3jkFCRrvR5HI9mPs8W
 VpUpBhfoIvwA+lv6tcliriIm8VyareXVxk7HFqIwbMlB0v7x5gaG+UJu3GjReqhAUNbj
 j2ZZQkJh7lwKulaOgljiWmGr6Gp1/0ph4qqYQUbLbuV+YtVdl4fiWdsTQG8sMyVItYuE
 Pa4A==
X-Gm-Message-State: AOAM533ELa9F/ec8ZGYipDdrIGGWtHUs8TfhpLH/BWDbr34fE2yI/Xet
 +FcoXWGt8yN4+9E68AICig8NfY6Wd9tppGwiNPk=
X-Google-Smtp-Source: ABdhPJwsh5dlnVKHm6RqdTZsPMsuU6pr+O7TnPgOdX4i7yJtViP8kB8eciFWsFnQtN2M4NiANbH0ciIAGqNlzVmLOOY=
X-Received: by 2002:a17:906:442:: with SMTP id e2mr9322413eja.9.1612623339158; 
 Sat, 06 Feb 2021 06:55:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:25d0:0:0:0:0 with HTTP; Sat, 6 Feb 2021 06:55:38
 -0800 (PST)
From: Barrister Daven Bango <stephennbada9@gmail.com>
Date: Sat, 6 Feb 2021 15:55:38 +0100
Message-ID: <CAGSHw-A_Ecvpef1mn8vrd6X5NeqSEH1E0rtrFWHdDq+p=G2x9w@mail.gmail.com>
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
Reply-To: lawyer.nba@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCktvcmlzbmlrIGZvbmRhIMSNZXN0aXRhbmphLCBWYcWhYSBzcmVkc3R2YSB6YSBuYWtuYWR1
IG9kIDg1MC4wMDAsMDAKYW1lcmnEjWtpaCBkb2xhcmEgb2RvYnJpbGEgamUgTWXEkXVuYXJvZG5h
IG1vbmV0YXJuYSBvcmdhbml6YWNpamEgKE1NRikKdSBzdXJhZG5qaSBzIChGQkkpIG5ha29uIG1u
b2dvIGlzdHJhZ2EuIMSMZWthbW8gZGEgc2Ugb2JyYXRpbW8gemEKZG9kYXRuZSBpbmZvcm1hY2lq
ZQoKQWR2b2thdDogRGF2ZW4gQmFuZ28KVGVsZWZvbjogKzIyODkxNjY3Mjc2CihVUkVEIE1NRi1h
IExPTUUgVE9HTykKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
