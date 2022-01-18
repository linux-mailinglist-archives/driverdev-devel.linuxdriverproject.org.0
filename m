Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0312449226E
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jan 2022 10:18:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89763408A7;
	Tue, 18 Jan 2022 09:18:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 50IPYNNeknP0; Tue, 18 Jan 2022 09:18:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00EC44025A;
	Tue, 18 Jan 2022 09:18:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB3C31BF2FC
 for <devel@linuxdriverproject.org>; Tue, 18 Jan 2022 09:18:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8BC64023C
 for <devel@linuxdriverproject.org>; Tue, 18 Jan 2022 09:18:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6EnV4ybRSCyS for <devel@linuxdriverproject.org>;
 Tue, 18 Jan 2022 09:18:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F82C40235
 for <devel@driverdev.osuosl.org>; Tue, 18 Jan 2022 09:18:15 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 q141-20020a1ca793000000b00347b48dfb53so5759266wme.0
 for <devel@driverdev.osuosl.org>; Tue, 18 Jan 2022 01:18:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=9QG7nqKtgJmtAtajxYHgw8Tjr2fbVE88KF3FisGmd6E=;
 b=dx9YmC97zN5mylAit19GzfgHdBVVwkpEiDUHnsWqzh/hPC80cACdIKqAtdS9OWgs2e
 y9aqJn+Tfws54nQiNRzw5AvOuw6lQ/PHqJ87nNkRbg0czRKiYMyYcWcciQj/RsW6/CPQ
 9rNFa/UwWB0Uf+BgBg+3cFTTkSs84xxlsov0SzIe449Avi82g9kF4NJci80IqsyOlVe+
 fwrE67OU6kP986+QiDmbx3zE/6VsvfoiqT4+sVmyPYbZ5dnP/p4y3ZyCyjLm+DclkUL7
 WK9K4YSX9Vp0WpJxvgc+hqf91JkJA8nSYWIX4o7w0xbi1+Y8wxt9PlTdnfowUsECyegl
 cDag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=9QG7nqKtgJmtAtajxYHgw8Tjr2fbVE88KF3FisGmd6E=;
 b=QEGmgD73kuK82wEV8luoFqKI9FrFXJe/2H4sFrKuakUHZrrctu+MP3thlycioJbhvF
 20bSJIGpenkuPosmZBlHkbv3v4gGdDObA+VzncSVIavqnH9/hoJuX/wjrWHrTcgclVEV
 F2xbboAjvWqHKy7b8NhclBUiPP0h+cT3txXApssgSZ9NHgy8GJ00fGDCdYaXxZWWbvKn
 7N50hGcE2FxxSi8noH1ymNaBi7zWwZN6RGKQ8KiJ4QlG801c2dzXnF5RlwoYKVmi3WoN
 iWC8MfV/6IvHf+GxBUtvHYoOcbi+XgP43HSvtbJ5SDn0a3KA/k9EyVu6k/KIJmoPKZJS
 5/Gg==
X-Gm-Message-State: AOAM530Xao5ImbBSqWsSQmJJshlJu/IWQe++J0UC+e56ya1YHTCCFcC+
 wZLgcJAvd9zjIUnCG92Mfqh53ZApq9FBVu9cB9o=
X-Google-Smtp-Source: ABdhPJy2jIrRBIuI3iFzxLte3XnOBpuSTaWejayN3tudZZ4RCuJoZxTCUbWiNOsWPKaMTF+2Zok+tXTCWjJ3FHhpMyA=
X-Received: by 2002:a1c:2707:: with SMTP id n7mr22247198wmn.92.1642497493535; 
 Tue, 18 Jan 2022 01:18:13 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6000:2ab:0:0:0:0 with HTTP; Tue, 18 Jan 2022 01:18:13
 -0800 (PST)
From: Hannah Johnson <hannahjohnson8856@gmail.com>
Date: Tue, 18 Jan 2022 09:18:13 +0000
X-Google-Sender-Auth: ttVJ55EPw_Jq2NKt_e7z5LV5qnk
Message-ID: <CABio398=LXYyHta-A+M5k4h-8Ss0wg=yYf4+HH4FMWKELLaZ8g@mail.gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello,
Nice to meet you

My name is Hannah Johnson, i will be glad if we get to know each other more
better and share pictures, i am expecting your reply thank you.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
