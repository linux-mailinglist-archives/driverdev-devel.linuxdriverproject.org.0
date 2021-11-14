Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E7344F5DA
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Nov 2021 02:05:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90E6660667;
	Sun, 14 Nov 2021 01:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E_IOF6LRvEnG; Sun, 14 Nov 2021 01:05:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F23CD605D1;
	Sun, 14 Nov 2021 01:05:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F11E11BF32A
 for <devel@linuxdriverproject.org>; Sun, 14 Nov 2021 01:05:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EDFCA80D60
 for <devel@linuxdriverproject.org>; Sun, 14 Nov 2021 01:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oN_UqFpgTHM2 for <devel@linuxdriverproject.org>;
 Sun, 14 Nov 2021 01:05:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8F1780D3B
 for <devel@driverdev.osuosl.org>; Sun, 14 Nov 2021 01:05:03 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id u22so19861382lju.7
 for <devel@driverdev.osuosl.org>; Sat, 13 Nov 2021 17:05:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=bdsvl1UwZuOHxPwopT9QunKFFT2xiibkhLWpB5BPk7U=;
 b=JKkl26dljUnc8UfHDyfMTIAEqHF3NeRxHW+UwNLp7DYFSwAPTs/wYoFGn2hjmqblkh
 oZwQrAYiTJr5Tc3O5V6Snf0n4gGVnstXsqEZWCJTV/iwk3V3KFdO6K61HS8A9boUbZFP
 qKlzfoeBuJAyiP+tzAEhrBexdZlTno9J7M+vFLekLo78oH14sB/ctiRUn+zxqBnzf6jj
 Sgrczr5V3XozdELhwbCnZ0f0ieLzXQ2m6p6G9UoKFgWq2E7ppXxw3isd/43rLLfY7GbT
 hRR4q0u8JPlcctEpsWjydWwERg95HntEfcv1XtxJKi4KJ1gP1aBVK45Msa0W/xYYuvTw
 Pe9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=bdsvl1UwZuOHxPwopT9QunKFFT2xiibkhLWpB5BPk7U=;
 b=gGlhpg7ROYXGOY8vrwKYX8FM0oKYKp3SSrN1/S3y6Cup1qAcXoAXZqH//nyOavhwP6
 KjvCTYrGMpaqQRmwOyCqwwsd0hfnMt+3LX4qEDg6UaENhKM8GmQuT1PBX4sKgVuhKa+k
 WRBVXoWGy/ZUNSrHeoqP0+hTErqgRi0rHawEgabHVwfmxJGFp1TjTlqlhfdyeeadZDdo
 D6Sc8WPW7DCYL/zxEEzvLeJSyvP4zAXUEoejOgXWlV6mka7j6lgdl1jWqt9SOKQ4x+wv
 n+9PCJFCezA/2yMWMOlfc8osvtTRAarnvsXZUzSfCMjhDEjl1vK/tpwCbFGfJW4XhhEI
 eD/A==
X-Gm-Message-State: AOAM530MGykyZedFeVpRbLjfu8Hotx5DDfgcis3YNXvWWjng7ivWJqRT
 WvMgk6Znjf4uu1Fvr9vSzMsl3ruqV2kiP1b1KHI=
X-Google-Smtp-Source: ABdhPJxRF7ao6MSjB0RSmXRZQIumPLGBHp8DTZ19lGjuKxhfnbeUp80bnNf+/XEfspYD6RuRv0QDsE0c+i6js2VGhOc=
X-Received: by 2002:a2e:9712:: with SMTP id r18mr25769313lji.245.1636851901596; 
 Sat, 13 Nov 2021 17:05:01 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6512:3daa:0:0:0:0 with HTTP; Sat, 13 Nov 2021 17:05:01
 -0800 (PST)
From: "Miss.Mmamie Shimirah" <orgimfoffice791@gmail.com>
Date: Sat, 13 Nov 2021 17:05:01 -0800
Message-ID: <CAC-pytEfTMV=gorLQ-PyP5oyzeMY26OvH4-WDN0NzwZdZn7vHg@mail.gmail.com>
Subject: Regarding Of My Late Father's Fund $10,200,000,
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
Reply-To: mmamie_shimirah@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

dear,

I got your contact through the internet due to serious searching for a
reliable personality.  I am Mmamie Shimirah from FreeTown Capital of
Sierra Leone.

Time of opposed to the government of President Ahmad Tejan Kebbah the
ex-leader since 21st November 2005 But I am current residing in Calavi
Benin due to war of my country, my mother killed on 04/01/2002 for
Sierra Leone civilian war and I am only child for my family bad news
that my father passed away on 25/11/2018. During the war my father
made a lot of money through the illegal sales of Diamonds to the tune
of $10,200,000.

This money is currently and secretly kept in ECOWAS security company
in Porto-Novo Benin, but because of the political turmoil which still
exists in Africa, I can not invest the money by myself, hence am
soliciting your help to help me take these funds into your custody for
invest.

I want to add here that if agreed 35% that's $3,570,000 of the total
worth of the fund will be yours minus your total expenses incurred
during the clearing of the fund in Porto Novo Benin. I would like to
invest on heavy duty agricultural equipment and earth moving machines
to enable me go into a full scale mechanized farming. l wait to hear
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
