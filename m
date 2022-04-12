Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EE94FE219
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Apr 2022 15:14:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5880F4036A;
	Tue, 12 Apr 2022 13:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zQ2QNam_IJU0; Tue, 12 Apr 2022 13:14:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA06740189;
	Tue, 12 Apr 2022 13:14:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36EDF1BF859
 for <devel@linuxdriverproject.org>; Tue, 12 Apr 2022 13:14:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24E104036A
 for <devel@linuxdriverproject.org>; Tue, 12 Apr 2022 13:14:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bXTps6pAT7PW for <devel@linuxdriverproject.org>;
 Tue, 12 Apr 2022 13:14:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4490340189
 for <devel@driverdev.osuosl.org>; Tue, 12 Apr 2022 13:14:53 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id y32so32143436lfa.6
 for <devel@driverdev.osuosl.org>; Tue, 12 Apr 2022 06:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=AMgn/fmoA+W85HGcvIUMT7zj4pr+s3QHcPbQUeuHK2Q=;
 b=ELCRa8iCay4Ap/VL68KZEpB+Pu5+KoUupe2lLQOh1lTCmXeD8E9rXD+sjbRajZyRnT
 CmfjVzoxUgcGNq9z1rbqkUxkPfzWjVHVpeaKR9dB2dxRV56aUdKRerGb9ubdyBpel679
 oG05pAGEomrDzVrmKNdx1Blt6++094DN7ukY6KRXRMNlERVDf1IaL4L5hlZYFCsUKZWg
 GT9930C/oDVog7OhxDL34Ezgj1ckmJt84vDnsDmZ9igwu+9AUzuZI2jqDajqUZCiAlHC
 4//Zs5gRYJZVZLBCDQiIT7gwqoMBc4DZ4wO98x1q4IuK3NnDh8+eDSksR5FEwL094JWk
 28lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=AMgn/fmoA+W85HGcvIUMT7zj4pr+s3QHcPbQUeuHK2Q=;
 b=Y9H9X4sf0GTd70Mei9QsqZnFqvEZnAJcFPr/27jyrImvFwqj3DUDwI5O2+sFb4GIux
 r3G1WuEmoUE87wX2M2Zplu4pamZS7/7cP0IB2l85Use4WebS8Gv8nJAremgArOCQRjJu
 l4tKUophh9jZS2Mha29d49MqplctFr5GkzvyPrGYpozuUCunNCbW6omYHJvmr4dWNsLQ
 VqKMwzNGdi8aja6uQ/okK+3cb5zAQv9LGEA/HtGar7C/5n9kmAGOZw5w6v0yrGUI/uQ9
 KQ4U3kypwle6Pz1tnDd2BVzkBO1lLXATPW6Bf+cD7Cyyp9ubQ6WlY84csM3XLU/nK/eR
 6VOw==
X-Gm-Message-State: AOAM533h58eYy8hZz2hbjHa/wAc15pK8/JDRAAsi3pprmMtlHwWFeNof
 hxsbUVLFLtf30jEs0/xHpGR5J552vSFaMGmjbh4=
X-Google-Smtp-Source: ABdhPJxIDBfxb5Iw5XScQ4PJ0uYMUYmyfSN92TWcgPfOGKt4egY8rsWeSNRuGqxoXAFLg2S2ImmbL9Bo4Ru6nc0cjUY=
X-Received: by 2002:a05:6512:13a3:b0:44a:6ac3:754d with SMTP id
 p35-20020a05651213a300b0044a6ac3754dmr24289305lfa.92.1649769291008; Tue, 12
 Apr 2022 06:14:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6520:2190:b0:1a5:b91b:c4a6 with HTTP; Tue, 12 Apr 2022
 06:14:50 -0700 (PDT)
From: Milan A Elizabeth <mulanalicia1@gmail.com>
Date: Tue, 12 Apr 2022 14:14:50 +0100
Message-ID: <CAFy+pyF+-2durqx1htoL0oS79PBLfu6ZodhZWt0fYgYQin05LA@mail.gmail.com>
Subject: reach out to the needy
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

Peace, mercy and blessings of God be upon you, my beloved. I am happy
to meet you here as friends.

My name is Melena Alicia
I am a Canadian but I live in the USA.
I am 48 years old.
I used to work for foreign petroleum exploration company and also
engaged in business investments before my retirement due to ill
health.

My husband is a native of  Dhahran from Saudi Arabia We both lived in
the USA but we got divorced after seven years due to infidelity, later
he died of cardiac arrest and I don't have any children.

If you don't mind, I want to entrust a humanitarian project over there
under your care and I implore for your friendship, believing that you
would be a true and sincere friend to me because good friends are rare
nowadays.
That is the reason I contacted you. Therefore I solicit  for your help
to achieve  this fit.

I want to give some portion of my wealth as a relief fund to the poor
people, less privileged, and the sick, over there in your country's
cities and villages as a result of the recent pandemic.

I don't know the situation over there now and how the poor families
over there Are being cared for and I know if I do this, it will please
the almighty God especially in my condition so as to be at peace.

I want you to assure me that you will do this for me and Please be
honest to me. I will reward you greatly for your time and stress and
also your kind heart, I wait for your reply on this before I can tell
more on how this project will be done.

My friend, you may be wondering why I chose you for this task.
I have been living at the specialist hospital, I have been ill since
October 2019, with leukemia. This is the reason I seek your assistance
in handling the project.

I do not walk with my legs anymore due to my health condition. I feel
I have to do something beneficial to the less fortunate over there
especially this time that the epidemic is sweeping the world because
it will satisfy the Almighty God especially in my case.

I am in the hospital, I do not want to be disturbed but it is my great
desire to achieve this project by entrusting it to an individual who
will be sincere in heart and do it without being self centered. That
is the reason I chose you for the project my friend.

This is my proposed plan and objective regarding the project and what
I want you to do for me.
My utmost aim for the project is to reach out to the needy (Orphanage
homes, Widows who are financially helpless) And also supporting some
local community projects.

Strategies:
Take care of a notable percentage of the less privileged children's
tuition fees.
Provide some quality food items for some non governmental orphanages homes.

Visit some local hospitals and pay the bills of some patients who
can't afford their hospital bills etc.
And also provide food items to widows in the local communities and
provide clothing materials to class of the less privileged.

Above all, I will not be there to watch you but God is always watching
us from a distance so do this project in sincerity and integrity. We
have to keep everything intact and do this carefully so we will
achieve our goals.

I have $ 2.5 million saved for this project that you are about to
execute for me, it is part of the money I saved during my active years
of work and business and I have decided to sacrifice it to those in
the orphanages and the underprivileged without discrimination.

I have already written a clear and willful letter to the bank about my
desire to withdraw the fund for a humanitarian task and I inform them
that as soon as I get a trusted person, I'll inform them for further
process and transfer of the fund.

I singled you out for this task not because you are perfect but for
the love of God. If you are willing to carry out this mission as I
have explained to you, I will reward you with 20% of the total amount.

If you have understood all that I have written to you and have agreed
to do it, I want you to reply to me with your ;
Full name, City/home address
contact phone number
 E-mail address


I will use the above information I requested to write to the
institution in charge of the fund to process and inform me on what to
do next for the transfer of funds to you. I wait for your reply.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
