Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF0B4C59EF
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Feb 2022 08:54:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4557814BA;
	Sun, 27 Feb 2022 07:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wXVV3c5ImN9C; Sun, 27 Feb 2022 07:54:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB93F8149C;
	Sun, 27 Feb 2022 07:54:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E0D71BF400
 for <devel@linuxdriverproject.org>; Sun, 27 Feb 2022 07:54:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D2E9408AC
 for <devel@linuxdriverproject.org>; Sun, 27 Feb 2022 07:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zLaKoUstk4XD for <devel@linuxdriverproject.org>;
 Sun, 27 Feb 2022 07:54:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com
 [IPv6:2a00:1450:4864:20::641])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ACF724089F
 for <devel@driverdev.osuosl.org>; Sun, 27 Feb 2022 07:54:09 +0000 (UTC)
Received: by mail-ej1-x641.google.com with SMTP id lw4so18891015ejb.12
 for <devel@driverdev.osuosl.org>; Sat, 26 Feb 2022 23:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=QU+cbZmU18+dqFnGocwGCLSMZiezXCdYalW0v8ApfXA=;
 b=UldCrSy5q+8gA+zzfsoNSTqX3VeNJsj6O0hVmWdQklZbedq/MpDa5p+g/Q88L+MvOI
 RAdp5qxZ67Xt9JKmb29KDhMYp/tasVXY13POBUK94UUbCTeMVk5WrJrj3yShYUr1owei
 PIzbtNYm9yFKymd9Vb9x1PCyYYaCAew1ztS0frzXfIyNID3REXikshiyTiOK55z91mqC
 2RsOmJ27vprGjrH86hsVQNQ/GdCCUDHgMV6efn8Io+07ZWhDBCYP9BX/JP8lfyrP/k0q
 V0/VO05QuJM1J8erSNih4hbCS5Yfo/S0MRg1mRTdqyn4opSLSI8guLAWS8dQXOFa/Ga6
 pFdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=QU+cbZmU18+dqFnGocwGCLSMZiezXCdYalW0v8ApfXA=;
 b=UIVbFCbO5yTLZR2SGdbwpOIZ9tWDPhHQW+ZEezvmrQb5QQUgwLsdXfz8q2idhh6cCz
 rrx/tuYwNgnG5NGhsRdf4LdnzzmSHyPeIwFey4BjucUuqzMF+NWokcVHDo8ihRyNGLlm
 Wj56qOYC6XfzzXZfSSrlObdD+57TOHdUV8Vh0K9gFVhG39TjgLCopbsoevYddz9Ji4Du
 xUDm40SyjVXIv2ofi0XvmaLXYunJO4m5nVXdZM5JLcAhRR3LimkMsAPcI++Z9sJwFunK
 S+K+Juj+mfFmM2Mh4snYH+OBlPIRnjINBpm+tgDvZkXFTKVKlNvaVfDeI47qMUCKT3UV
 aIXw==
X-Gm-Message-State: AOAM533Rpy8tEyLG0NQBV6ztzQUv26gSxgkBQjOmCtqWS/rulDaiuESQ
 nP7d+bCF+m5fWkekAu65eSGowuh4/pwSZsYHVeY=
X-Google-Smtp-Source: ABdhPJwHsL4tRezpw0DszG32bGAmOrRH2c8KIVL3E1AuIzDUS/4uZyjlHJ795uaKkIwQdXeLK3f00MQr1IsPFj9q/eQ=
X-Received: by 2002:a17:906:3941:b0:6d0:ee09:6b67 with SMTP id
 g1-20020a170906394100b006d0ee096b67mr11485674eje.45.1645948447379; Sat, 26
 Feb 2022 23:54:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab4:9906:0:0:0:0:0 with HTTP; Sat, 26 Feb 2022 23:54:06
 -0800 (PST)
From: Mr hary kunda <khanadbul01@gmail.com>
Date: Sat, 26 Feb 2022 23:54:06 -0800
Message-ID: <CALr78wVw5yzxVFCib093sT4_zBCp5tR70AR7gm05Ef+JSM19jQ@mail.gmail.com>
Subject: Greetings from Mr.Hary Kunda
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
Reply-To: hari_kunda1@hotmail.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Greetings from Mr.Hary Kunda

How are you and your family?
There is a business deal I would like to introduce to you. There is no
risk involved.
The deal is worth $10.5 million. We split it in half - 50% each.
Revert to me asap if you are interested.
Regards,

Mr. Hary Kunda
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
