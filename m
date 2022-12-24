Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6B9655B27
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Dec 2022 21:22:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5635409A3;
	Sat, 24 Dec 2022 20:22:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5635409A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id spgh6smqjQis; Sat, 24 Dec 2022 20:22:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 166E0409EF;
	Sat, 24 Dec 2022 20:22:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 166E0409EF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 95F161BF3E1
 for <devel@linuxdriverproject.org>; Sat, 24 Dec 2022 20:22:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69AF4403FF
 for <devel@linuxdriverproject.org>; Sat, 24 Dec 2022 20:22:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9zxzD0uK0r39 for <devel@linuxdriverproject.org>;
 Sat, 24 Dec 2022 20:22:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com
 [IPv6:2a00:1450:4864:20::537])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37AF3400FE
 for <devel@driverdev.osuosl.org>; Sat, 24 Dec 2022 20:22:17 +0000 (UTC)
Received: by mail-ed1-x537.google.com with SMTP id
 b16-20020a056402279000b0046fb99731e6sf5493259ede.1
 for <devel@driverdev.osuosl.org>; Sat, 24 Dec 2022 12:22:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671913335; cv=pass;
 d=google.com; s=arc-20160816;
 b=Iq7VKgzKBW0Fu9JsRZ71hOFHd+ogUWfIjII0ANr3SfU0EpnJ+rrI045j3UJAJFekUO
 pBFxpIhgOHs+N8U5VbTPL0i2oE7VquhkE9l84aBYdQyEU5ZVGeUU9Zkn61evc5a8KX6A
 ML9s36nwJsxmLibU2zAIEdkUkzIo4+Ih+CYb5cHGX7stgh3EIuWb0qnS+CWCyNG8JYZp
 Cwvn6C36sSepPrtaPD044GO5orwbVy+QFHDRWdVQEcmi9IvxQtiPmzWBRwUbtQ9RTw6a
 4II/KhbNl2WVzKf7l5/fnOwMJkCsmMwjkSo3kXsllq2cgPgghWA0tpw3t2V4TNIQYriV
 o7ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20160816; 
 h=list-unsubscribe:list-archive:list-help:list-post:list-id
 :mailing-list:precedence:content-transfer-encoding:to:subject
 :message-id:date:from:mime-version:sender:dkim-signature
 :dkim-signature;
 bh=+8y+HO0SogrVi34YqVrWkl8FAKyWwtFpk/hkdFsxNHU=;
 b=jrWW8tjszHHFDBhjaAkeNyBWPxkE1mj+xTMVLG61WxtyaZ+vANW8Btaziqsx8jaghr
 OXIYbukXWZkTorQfi8x0Pjkf/j5cyl87OGjD6z2QJwTkRMnMC0X9gkcFSK88u5NAO9Nn
 Akio/jdIvvO9JtcEJhetQEAyuoCJwjxewViukj0HpRakTpJe5p+O0TA+jlPkZHnPYHDP
 7UC46Xm2vOSYsQGFKJschId0lXp7J5lgguK1Vj2gFoYIPJ0vgu5yYMaVJSPdDQwrW+wN
 vmJQzf04OHyFYuZ8TEEdnLmfwUqFJDWXNfuObzjBcoy6fzAIfepMdR0T1cakkpkoIUmv
 kheQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UDbzzJra;
 spf=pass (google.com: domain of saradfd5254@gmail.com designates
 2a00:1450:4864:20::634 as permitted sender)
 smtp.mailfrom=saradfd5254@gmail.com; 
 dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=list-unsubscribe:list-archive:list-help:list-post
 :x-spam-checked-in-group:list-id:mailing-list:precedence
 :x-original-authentication-results:x-original-sender
 :content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+8y+HO0SogrVi34YqVrWkl8FAKyWwtFpk/hkdFsxNHU=;
 b=DY914UzUg8OyZd00ZL7K30jzwTf35Wd1sSVTXfRhjCOp1ypnFAdkgTZwGcR/ruT6Yl
 ZO4nzRaNxgOE3HClFELd59dzMae6Zq8UA1VCGzKvjNh3lkIEZ98h+QqvEg6QAg4tMMmw
 SifaAH/aF072ZjRI5zIA4mXm/kDhmHjz8+5WE9vKnLvVeYiqenK1U08/hShvLLrh0div
 qICpT2TIdMlskUzNhqBszigybuRSoAO5rP3iAMK2AccujN7G2aQNYqXFEz2zJF0AEf1G
 /64BYO0dgKtT2e5m43VQeY9tovNE8D5y7Wn2kJQERtf5MnyJ4WDUwl4MhlIKSG84WIWt
 A3wA==
X-Gm-Message-State: AFqh2kplK4iFEYwU1PeRMJK6JONxrp75ug+J7mz/CAb4njQQbSThdK+p
 LvH+x4va8KzwxCy9vRos6po=
X-Google-Smtp-Source: AMrXdXvI81pjeR05WzJcbDPncOIZy2O7dFFqT0/SufP8HIvOJC8m/oC33DIyWVKKYlO5iYfje8gG0g==
X-Received: by 2002:a17:907:1393:b0:7c1:4e96:da7a with SMTP id
 vs19-20020a170907139300b007c14e96da7amr1184888ejb.596.1671913335036; 
 Sat, 24 Dec 2022 12:22:15 -0800 (PST)
X-BeenThere: 2030-mohanndahad24@googlegroups.com
Received: by 2002:a05:6402:2708:b0:46d:d0c2:969c with SMTP id
 y8-20020a056402270800b0046dd0c2969cls2253036edd.1.-pod-prod-gmail; Sat, 24
 Dec 2022 12:22:01 -0800 (PST)
X-Received: by 2002:a05:6402:548e:b0:479:8303:dc1c with SMTP id
 fg14-20020a056402548e00b004798303dc1cmr10945997edb.7.1671913321792; 
 Sat, 24 Dec 2022 12:22:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671913321; cv=none;
 d=google.com; s=arc-20160816;
 b=qaz+WLDOkdPhmg2bLQtQPFuxKwY6153kRfSPbrawH2ueXkdh3pUYyFDOsu49RoAL5Q
 brPO5b8SbktkOjAcIu9Waixs+FwZ98qBrvdQ/hq7cMlRo/QrjtIiKp526KLd3TVx16yn
 uuOLj49Wx+Y87cUIgFH1MU+Su7PkksYxp6lFM2xfRsNx48+0ZU3FROWB9WKgZG1Sy8al
 L/ChuWU4EoMQC3sshCl1PbFapT44lgAPuWAz2N3UrFT30711ixurmg6891sTiKQwqYym
 r++222P3b6E0CFA8wxx88rS5P/cCQTbvxIyb8QBk/7VKsJFSk69c92mY6xkQ0FH7hwf+
 x1mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20160816; 
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:dkim-signature;
 bh=iZtnX+T81NAslhonsSLxz9gnv33ny5lfFoq7w9ZfQUg=;
 b=YjApvUrf/9ynDbt2SWrefSrV9CI+K2jVI/OkoAlHldbzh5cK0OIG2xxR8og1Cx/C5k
 zY+EYGYltCT1lERqo+Kl3BdIJwjmZk/JVJTjSJYRe0XldKpO8ur6zYz8l1GZ9Plmm2GK
 mGs8s/iw9XoFGjRg62noaLBPAg3DG5oFgHOk2EgzoIPQKp+u1u1MHNCS15d+QTujAZZC
 cnmo9/S3n3tHbRhyYa7osCTb+UyoXE4XXUL9e2EhuKzdT18TZJ6nkw5Th3VHmnYKox+k
 pEiCFFoKod09ULL++bbnaBAZgg/2QK8D6qADdzOlBVennLCdPYx1GCRUjaIiIuoY4MoC
 IESw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UDbzzJra;
 spf=pass (google.com: domain of saradfd5254@gmail.com designates
 2a00:1450:4864:20::634 as permitted sender)
 smtp.mailfrom=saradfd5254@gmail.com; 
 dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com.
 [2a00:1450:4864:20::634]) by gmr-mx.google.com with ESMTPS id
 k6-20020aa7d2c6000000b004704657766csi320347edr.1.2022.12.24.12.22.01
 for <2030-mohanndahad24@googlegroups.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 24 Dec 2022 12:22:01 -0800 (PST)
Received-SPF: pass (google.com: domain of saradfd5254@gmail.com designates
 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634; 
Received: by mail-ej1-x634.google.com with SMTP id tz12so18958109ejc.9
 for <2030-mohanndahad24@googlegroups.com>;
 Sat, 24 Dec 2022 12:22:01 -0800 (PST)
X-Received: by 2002:a17:906:86d4:b0:7c0:7e90:ec98 with SMTP id
 j20-20020a17090686d400b007c07e90ec98mr774857ejy.537.1671913321387; Sat, 24
 Dec 2022 12:22:01 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?2LPYp9ix2Kkg2LnYqNivINin2YTYrNmI2KfYrw==?=
 <saradfd5254@gmail.com>
Date: Sat, 24 Dec 2022 22:21:51 +0200
Message-ID: <CAC+vY9DDfSP=wt5gEs+bzWnoJCGagKCTkU5Ab1uqcOeWmQhR3w@mail.gmail.com>
Subject: =?UTF-8?B?2KrYrdmK2Kkg2LfZitio2Kkg2Ygg2KjYudivINiM2IzYjCDYo9i32YrYqCDYp9mE2KPZhQ==?=
 =?UTF-8?B?2YbZitin2Kog2YjYp9mE2KrYrdmK2KfYqiDYqtmH2K/ZitmH2Kcg2YTZg9mFINin2YTYr9in2LEg2Kc=?=
 =?UTF-8?B?2YTYudix2KjZitipINmE2YTYqtmG2YXZitipINin2YTYp9iv2KfYsdmK2Kkg2KjYtNmH2KfYr9ipINmF?=
 =?UTF-8?B?2LnYqtmF2K8gLSBBSEFEINin2YTYs9in2K/YqSDYp9mE2YXYrdiq2LHZhdmI2YYg2KfZhNiz2YTYp9mF?=
 =?UTF-8?B?INi52YTZitmD2YUg2YjYsdit2YXYqSDYp9mE2YTZhyDZiNio2LHZg9in2KrZhyDYp9mE2YXZiNi22Yg=?=
 =?UTF-8?B?2Lk6INi52LHYtiDYqtiv2LHZitio2Yog2K/YudmI2Kkg2YXYtNin2LHZg9ipINmB2Yog2KfZhNiv2Kg=?=
 =?UTF-8?B?2YTZiNmFINin2YTZhdiq2YLYr9mFINmE2KrYo9mH2YrZhCDYp9mE2YXYr9mK2LEg2KfZhNiq2YbZgdmK?=
 =?UTF-8?B?2LDZiiDYp9mE2YXYrdiq2LHZgSBDRU8gQ2VydGlmaWVkIENFTyBwcm9mZXNzaW9uYWwgVHJhaW5pbmcg?=
 =?UTF-8?B?RGlwbG9tYSDYp9mE2LDZiiDYs9mK2LnZgtivINmB2Yog2KfZhNmB2KrYsdipINmF2YYgMSDigJMgNSA=?=
 =?UTF-8?B?2YrZhtmA2YDZgNmA2YDZgNmA2YDZgNmA2YDZgNmA2KfZitmA2LEgMjAyMyDYqNin2YTZgtin2YfYsdip?=
 =?UTF-8?B?IOKAkyDYrNmF2YfZiNix2YrYqSDZhdi12LEg2KfZhNi52LHYqNmK2Kkg2KfZiCDYqtiv2LHZitioINi5?=
 =?UTF-8?B?2YYg2KjZj9i52K8gKNij2YjZhiDZhNin2YrZhikg2YXZgtiv2YXYqSA6INmH2YQg2KrYsdi62Kgg2YE=?=
 =?UTF-8?B?2Yog2KfZhNmI2LXZiNmEINin2YTZiSDZiNi42YrZgdipICLZhdiv2YrYsSDYqtmG2YHZitiw2YoiINmB?=
 =?UTF-8?B?2Yog2KfZiiDZhdik2LPYs9ipINin2Ygg2LTYsdmD2KnYjCDZhNin2KjYryDYo9mG2YMg2KrYudmE2YUg?=
 =?UTF-8?B?2KfZhiDZh9iw2Ycg2KfZhNmI2LjZitmB2Kkg2YTZh9inINin2YTYudiv2YrYryDZhdmGINin2YTZhdiq?=
 =?UTF-8?B?2LfZhNio2KfYqiDYp9mE2YXZh9mG2YrYqSDZiNin2YTZhdmH2KfYsdmK2Kkg2YjYp9mE2YXYudix2YE=?=
 =?UTF-8?B?2YrYqdiMINmE2LDZhNmDINmC2YXZhtinINio2KrYtdmF2YrZhSDZh9iw2Ycg2KfZhNi0?=
To: undisclosed-recipients:;
X-Original-Sender: saradfd5254@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=UDbzzJra;       spf=pass
 (google.com: domain of saradfd5254@gmail.com designates 2a00:1450:4864:20::634
 as permitted sender) smtp.mailfrom=saradfd5254@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list 2030-mohanndahad24@googlegroups.com;
 contact 2030-mohanndahad24+owners@googlegroups.com
X-Spam-Checked-In-Group: 2030-mohanndahad24@googlegroups.com
X-Google-Group-Id: 68851416281
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlegroups.com; s=20210112;
 h=list-unsubscribe:list-archive:list-help:list-post:list-id
 :mailing-list:precedence:x-original-authentication-results
 :x-original-sender:content-transfer-encoding:to:subject:message-id
 :date:from:mime-version:sender:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+8y+HO0SogrVi34YqVrWkl8FAKyWwtFpk/hkdFsxNHU=;
 b=ZYRcmrEVNSvbZlKvTlxJlYNGF3zRAuv5ysz3pHM+ZXXqa1PISO5Ctll1nBbmeK3BI8
 aYnYc59CTBc6OTHp4FU/27tVikFpWINMR2iY+7ooIYV/adpKB8DL4/iWLnx5ukdVsB1j
 2nG7YqowxvIUtBfPY3pb+oMPm58td75lXfFg2JurAPpsUUIEKtLnrYbC4lmIfqKz4An7
 K5lpxOzoot95qFxLxQ5wursQGVt5eO/RETD1Zd1TL5My1LK7uqrDwAOeZ/681dQEGZxT
 6HNEO5zB9OEvz7QIKhJEvbbRLzsftw9l3zRYz0eyXQkIQNDnCLCiE2XqbX2XcENAt2mg
 8DmQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=list-unsubscribe:list-archive:list-help:list-post:list-id
 :mailing-list:precedence:x-original-authentication-results
 :x-original-sender:content-transfer-encoding:to:subject:message-id
 :date:from:mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=+8y+HO0SogrVi34YqVrWkl8FAKyWwtFpk/hkdFsxNHU=;
 b=Dsy4ANDVLPNM8uSwVuTFK6DTKZtWrb0RQFM767HAGS/8Tt3KWar5HF+IyXLYX9Kaix
 0+5ijki8YM/Xh82Mb+H9dRF70qae8bjZRshWZi4irtrjQ/HPSKx6EGYk/VgwG5E+HSrI
 nMtuHCIwt4jIpVB+w1jrp2Mue77XFuugXFj3stbonhGGQI0q9+U0MNXhBd90tGC1UO4C
 1nEFrC0jtY0Lt+JnVv44Rp7nQqmffhqP7QcOTMfjl9rZoOeHeqWLRnJ/WXGQJ+YNWBkq
 +I+lGJbF5/JDywg7GEguIdvraPrnxqMpfTIJqThHTgocfr0wLk4SGWHxfI2AqjtW8RMF
 7N4A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=permerror (bad
 message/signature format)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=googlegroups.com
 header.b="ZYRcmrEV"; dkim=pass (2048-bit key) header.d=gmail.com
 header.b="Dsy4ANDV"
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
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

2KrYrdmK2Kkg2LfZitio2Kkg2Ygg2KjYudivINiM2IzYjA0KDQrYo9i32YrYqCDYp9mE2KPZhdmG
2YrYp9iqINmI2KfZhNiq2K3Zitin2Kog2KrZh9iv2YrZh9inINmE2YPZhSDYp9mE2K/Yp9ixINin
2YTYudix2KjZitipINmE2YTYqtmG2YXZitipINin2YTYp9iv2KfYsdmK2KkNCtio2LTZh9in2K/Y
qSDZhdi52KrZhdivIC0gQUhBRA0KDQrYp9mE2LPYp9iv2Kkg2KfZhNmF2K3Yqtix2YXZiNmGDQoN
Ctin2YTYs9mE2KfZhSDYudmE2YrZg9mFINmI2LHYrdmF2Kkg2KfZhNmE2Ycg2YjYqNix2YPYp9iq
2YcNCg0K2KfZhNmF2YjYttmI2Lk6INi52LHYtiDYqtiv2LHZitio2YoNCg0K2K/YudmI2Kkg2YXY
tNin2LHZg9ipINmB2Yog2KfZhNiv2KjZhNmI2YUg2KfZhNmF2KrZgtiv2YUg2YTYqtij2YfZitmE
INin2YTZhdiv2YrYsSDYp9mE2KrZhtmB2YrYsNmKINin2YTZhdit2KrYsdmBIENFTw0KDQpDZXJ0
aWZpZWQgQ0VPIHByb2Zlc3Npb25hbCBUcmFpbmluZyBEaXBsb21hDQoNCtin2YTYsNmKINiz2YrY
udmC2K8g2YHZiiDYp9mE2YHYqtix2Kkg2YXZhiAxIOKAkyA1INmK2YbZgNmA2YDZgNmA2YDZgNmA
2YDZgNmA2YDZgNin2YrZgNixIDIwMjMNCg0K2KjYp9mE2YLYp9mH2LHYqSDigJMg2KzZhdmH2YjY
sdmK2Kkg2YXYtdixINin2YTYudix2KjZitipINin2Ygg2KrYr9ix2YrYqCDYudmGINio2Y/Yudiv
ICjYo9mI2YYg2YTYp9mK2YYpDQoNCtmF2YLYr9mF2KkgOg0KDQrZh9mEINiq2LHYutioINmB2Yog
2KfZhNmI2LXZiNmEINin2YTZiSDZiNi42YrZgdipICLZhdiv2YrYsSDYqtmG2YHZitiw2YoiINmB
2Yog2KfZiiDZhdik2LPYs9ipINin2Ygg2LTYsdmD2KnYjCDZhNin2KjYrw0K2KPZhtmDINiq2LnZ
hNmFINin2YYg2YfYsNmHINin2YTZiNi42YrZgdipINmE2YfYpyDYp9mE2LnYr9mK2K8g2YXZhiDY
p9mE2YXYqti32YTYqNin2Kog2KfZhNmF2YfZhtmK2Kkg2YjYp9mE2YXZh9in2LHZitipDQrZiNin
2YTZhdi52LHZgdmK2KnYjCDZhNiw2YTZgyDZgtmF2YbYpyDYqNiq2LXZhdmK2YUg2YfYsNmHINin
2YTYtNmH2KfYr9ipINin2YTZhdiq2YLYr9mF2Kkg2YTYqtij2YfZitmEINin2YTZhdi02KfYsdmD
2YrZhiDZgdmKDQrZh9iw2Kcg2KfZhNiv2KjZhNmI2YUg2YTYqtmI2YTZiiDYp9mE2YjYuNin2KbZ
gSDYp9mE2KfYr9in2LHZitipINin2YTYudmE2YrYpyDZiNi52YTZiSDYsdij2LPZh9inINmI2LjZ
itmB2Kkg2KfZhNmF2K/ZitixDQrYp9mE2KrZhtmB2YrYsNmK2Iwg2YjYsNmE2YMg2LnZhiDYt9ix
2YrZgiDYqtmG2YXZitipINmF2YfYp9ix2KfYqiDYp9mE2YXYtNin2LHZg9mK2YYg2KfZhNmC2YrY
p9iv2YrYqSDZiNiq2LnZhdmK2YIg2KfZhNmF2YHYp9mH2YrZhQ0K2KfZhNin2K/Yp9ix2YrYqSDZ
iNin2YTYs9mE2YjZg9mK2Kkg2YTYr9mJINin2YTZhdix2LTYrdmK2YYg2YTYtNi62YQg2YfYsNmH
INin2YTZiNi42KfYptmB2Iwg2YjZitiq2YUg2LDZhNmDINmF2YYg2K7ZhNin2YQNCtiq2KjYp9iv
2YQg2KfZhNiu2KjYsdin2Kog2KfZhNi52YTZhdmK2Kkg2YTYsdmB2Lkg2KfZhNmC2K/YsdipINi5
2YTZiSDYqtit2YXZhCDYp9mE2YXYs9im2YjZhNmK2KfYqiDYp9mE2KfYr9in2LHZitipDQrZiNin
2YTYp9i22LfZhNin2Lkg2KjYp9mE2YXZh9in2YUg2KfZhNmF2LPYqtmC2KjZhNmK2Kkg2KfZhNmF
2YbZiNi32Kkg2KjZiNi42YrZgdipICLZhdiv2YrYsSDYqtmG2YHZitiw2YoiIC4uINiq2YUNCtin
2YTYr9ix2KfYs9ipINin2YjZhtmE2KfZitmGINmF2YYg2K7ZhNin2YQg2KfZhNin2YbYqtix2YbY
qiDYudio2LEg2YXYrdin2LbYsdin2Kog2KrZgdin2LnZhNmK2Kkg2YXYuSDYo9mD2YHYoyDYp9mE
2YXYrdin2LbYsdmK2YYNCtin2YTYp9iv2KfYsdmK2YrZhiDZgdmKINin2YTZiNi32YYg2KfZhNi5
2LHYqNmKLg0KDQog2KfZhNin2YfYr9in2YEgOg0KDQrCtyAgICAgICAg2KfZhNiq2YXZg9mGINmF
2YYg2YLZitin2K/YqSDZhdmG2LjZhdin2KrZh9mFINio2YPZgdin2KHYqSDZiNmB2LnYp9mE2YrY
qSDYudin2YTZitipINmF2Lkg2KfZhNiq2LHZg9mK2LIg2LnZhNmJDQrYo9mH2YUg2YXZh9in2LHY
p9iqINmI2YXYpNi02LHYp9iqINin2YTZhtis2KfYrSDZhNiq2K3ZgtmK2YIg2KfZhNij2YfYr9in
2YEg2KfZhNmF2YbYtNmI2K/YqSDZhNmE2YXZhti42YXYp9iqLg0KDQrCtyAgICAgICAg2KfZhNiq
2LLZiNivINio2KfZhNmF2YfYp9ix2KfYqiDYp9mE2LnZhdmE2YrYqSDYp9mE2KrYt9io2YrZgtmK
2Kkg2YXZhiDZiNin2YLYuSDYp9mE2YXZhdin2LHYs9ipINmI2KfZhNiu2KjYsdipLg0KDQrCtyAg
ICAgICAg2KfZhNiq2LLZiNivINio2KPYs9in2LPZitin2Kog2KfZhNil2K/Yp9ix2Kkg2KfZhNiq
2YbZgdmK2LDZitipLg0KDQrCtyAgICAgICAg2KfZhNiq2LnYsdmBINi52YTZiSDYp9mE2YXZhti1
2Kgg2KfZhNmI2LjZitmB2Yog2YTZhNmF2K/ZitixINin2YTYqtmG2YHZitiw2YouDQoNCsK3ICAg
ICAgICDZhdi52LHZgdipINin2YTZiNi12YEg2KfZhNmI2LjZitmB2Yog2YTZhNmF2K/ZitixINin
2YTYqtmG2YHZitiw2YouDQoNCsK3ICAgICAgICDYp9mE2KrYudix2YEg2LnZhNmJINin2YTZhdmH
2KfYsdin2Kog2KfZhNmE2KfYstmFINin2YPYqtiz2KfYqNmH2KcuDQoNCsK3ICAgICAgICDYp9mE
2KrYudix2YEg2LnZhNmJINin2YPYq9ixINmF2YYgMzAg2YXZh9in2LHYqSDYo9iz2KfYs9mK2Kkg
2YrYrdiq2KfYrCDYpdmE2YrZh9inINin2YTZhdiv2YrYsSDYp9mE2KrZhtmB2YrYsNmKINin2YTZ
htin2KzYrS4NCg0K2KfZhNmF2LPYqtmH2K/ZgdmI2YYgOg0KDQoxLiDZhdiv2LHYp9ihINin2YTY
pdiv2KfYsdin2Kog2YHZiiDYp9mE2YXYpNiz2LPYp9iqINmIINin2YTYtNix2YPYp9iqINin2YTY
udin2YXYqSDZiCDYp9mE2K7Yp9i12KkgLg0KDQoyLiDYsdik2YjYs9in2KEg2KfZhNij2YLYs9in
2YUg2KfZhNil2K/Yp9ix2YrYqSDZiCDZhdiv2YrYsdmIINin2YTYr9mI2KfYptixINmIINmF2LTY
sdmB2Ygg2KfZhNmI2K3Yr9in2Kog2KfZhNil2K/Yp9ix2YrYqSAuDQoNCjMuINin2YTZhdix2LTY
rdmK2YYg2YTYtNi62YQg2YXZhtin2LXYqCDYpdiv2KfYsdmK2Kkg2YXYqtmI2LPYt9ipINij2Ygg
2LnZhNmK2KcgLg0KDQo0LiDYp9mE2K7YsdmK2KzZitmGINin2YTYrNin2YXYudmK2YrZhiDZiCDY
t9mE2KfYqCDYp9mE2YXYsdin2K3ZhCDYp9mE2KzYp9mF2LnZitipINin2YTZhdiq2YLYr9mF2Kkg
Lg0KDQo1LiDZg9in2YHYqSDYp9mE2YXZh9iq2YXZitmGINio2KrYt9mI2YrYsSDZhdmH2KfYsdin
2KrZh9mFINmIINmF2LnYp9ix2YHZh9mFINmB2Yog2YXZitin2K/ZitmGINin2YTYudmF2YQg2KfZ
hNil2K/Yp9ix2Yog2Ygg2KfZhNiq2YbZgdmK2LDZiiAuDQoNCjYuINij2YYg2YrZg9mI2YYg2KfZ
hNmF2LPYqtmH2K/ZgdmI2YYg2YXZhiDZhdiz2KrZiNmK2KfYqiDZiCDYp9mH2KrZhdin2YXYp9iq
INil2K/Yp9ix2YrYqSDZhdiq2YLYp9ix2KjYqS4NCg0KDQoNCtmE2KrYo9mD2YrYryDZhdi02KfY
sdmD2KrZg9mFINin2YTYr9io2YTZiNmFINin2YTZhdiw2YPZiNixINin2LnZhNin2Ycg2YrYsdis
2Ykg2KfZhNiq2YPYsdmFINio2YXYsdin2LPZhNiq2YbYpyDZiNin2KrYsyDYp9ioDQrYudmE2Ykg
MDAyMDEwNjI5OTI1MTAg4oCTIDAwMjAxMDk2ODQxNjI2DQoNCtin2Ygg2KrZiNin2LXZhCAg2YXY
udmG2Kcg2KjYsdiz2KfZhNipINi52KjYsSDZiNin2KrYsyDYp9ioINio2KfZhNi22LrYtyDZh9mG
2KcNCg0KDQoNCg0KDQrYotmF2YTZitmGINin2YYg2KrYtdmE2YbYpyDYqtix2LTZitit2KfYqtmD
2YUg2YHZiiDYp9mC2LHYqCDZiNmC2Kog2YXZhdmD2YYg2YTYp9is2LHYp9ihINin2YTZhNin2LLZ
hSAuDQoNCtmI2KrZgdi22YTZiNinICDYqNmC2KjZiNmEICDZgdin2KbZgiDYp9mE2KfYrdiq2LHY
p9mFINmI2KfZhNiq2YLYr9mK2LEgLg0KDQrYqtit2YrYp9iq2YoNCg0K2LPYp9ix2Kkg2LnYqNiv
INin2YTYrNmI2KfYrw0KDQotLSAKWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlv
dSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAi2LHYpNmK2KkyMDMw2YTZhNiv
2KfYsSDYp9mE2LnYsdio2YrYqSIgZ3JvdXAuClRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91
cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gMjAz
MC1tb2hhbm5kYWhhZDI0K3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb20uClRvIHZpZXcgdGhp
cyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9k
L21zZ2lkLzIwMzAtbW9oYW5uZGFoYWQyNC9DQUMlMkJ2WTlERGZTUCUzRHd0NWdFcyUyQmJ6V25v
SkNHYWdLQ1RrVTVBYjF1cWNPZVdtUWhSM3clNDBtYWlsLmdtYWlsLmNvbS4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
