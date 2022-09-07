Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (unknown [IPv6:2605:bc80:3010:0:a800:ff:fe97:d076])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB935B06DA
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Sep 2022 16:32:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E4FA82849;
	Wed,  7 Sep 2022 14:32:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E4FA82849
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CwyhOqmuXUW0; Wed,  7 Sep 2022 14:32:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC808827BB;
	Wed,  7 Sep 2022 14:32:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC808827BB
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A2A01BF28D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  7 Sep 2022 14:32:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C459A827BB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  7 Sep 2022 14:32:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C459A827BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kLQn7MG5p_Yd
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  7 Sep 2022 14:32:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BE708282C
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BE708282C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  7 Sep 2022 14:32:47 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id t5so19958651edc.11
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 07 Sep 2022 07:32:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=UTPjlhWN0j/3cl0uibj9IdU3K9tIHCNTd74bAPWV+BQ=;
 b=5/WBWNWjgjv8PPxu0pTKg6qk5oMhBi7ssZu0GVx3QxeMjjEGc/HtCW4md8FtIDVlM1
 PFi30woiWQPP8/lGvyIGYs1LbzliRWZBlb+nm9Q2fHs5JpC3pAhL3TOUdR/NhYM3YwNs
 9mUlViz9Mf7U7vhUeZivMILnvZyU0xM19z+NA/sJReBv6wpykOfV2twK7vzCbu4CQwja
 cmVUKg4Zkuze8fDOACq8gkQzE30yLEys6/1YZRAqoblGAmMse+sV16NoF8c5BCMjnMJN
 tkKOPGyxUbgh/vI2IrHEdIUld1hf3HWgeqpw2ka18tHiXbfA1qFdZCNuyGbgpi/95F0C
 C+Vg==
X-Gm-Message-State: ACgBeo0fbLvI27jMPsrIw03lBNMGnPes482nSeS7bGtn9FuLDsyW3A1B
 wkZ/ScnwE/OiSSn2XUNbF1WGY/YC7Tgl8YWHN7o=
X-Google-Smtp-Source: AA6agR4rVWBPLpn6GXYzkUIV6dVS5ftgYaJRvLA5IUNE2znvSte/lik1W2yhM2ubbwRHIY2/TUDyhZrg0vh1fMG2v9I=
X-Received: by 2002:a05:6402:510c:b0:43e:305c:a4d1 with SMTP id
 m12-20020a056402510c00b0043e305ca4d1mr3247713edd.35.1662561165041; Wed, 07
 Sep 2022 07:32:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:3fc4:0:0:0:0:0 with HTTP;
 Wed, 7 Sep 2022 07:32:44 -0700 (PDT)
From: LUMAR CASEY <miriankushrat@gmail.com>
Date: Wed, 7 Sep 2022 16:32:44 +0200
Message-ID: <CAO4StN0TpPxKN5zH_svRaRqGX4qmv4BYo2qpgmikVSdFaMxdLg@mail.gmail.com>
Subject: ATTENTION/PROPOSAL
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date;
 bh=UTPjlhWN0j/3cl0uibj9IdU3K9tIHCNTd74bAPWV+BQ=;
 b=mqK4Urm6SI0LL0fIUpNglz2SbMFsznWTf0PUQzqjeQH/Bx12DkdTnBbzDZaQ4NR5iF
 EQ7O7aO6doj8u/y3juxRvQfrpZ+4GxqWxP8xLHHcNMflWyA+nbVtyNaPRhtr9ofPoPwP
 8B+OpsMdCo4QTDhmgZx918/MwMfvch/o8zTMSvXvdQRmqiXAGAGG0BMKFEwgydJ+Wh2g
 mACuo7ixacFf2kfjc0mw39zk8rxwdiQKq9VKx4zvYpa6O1ByXXOPP+qBaWEXo7gAHnwA
 FAVlPjIOEE2/ttEfWJe2qBCmRSUgsg0XQyoATWJy8k712P//auvk1V/Dh46aKaKpfIy+
 X5Hw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=mqK4Urm6
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
Reply-To: lumar.casey@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ATTENTION

BUSINESS PARTNER,

I AM LUMAR CASEY WORKING WITH AN INSURANCE FINANCIAL INSTITUTE, WITH
MY POSITION AND PRIVILEGES I WAS ABLE TO SOURCE OUT AN OVER DUE
PAYMENT OF 12.8 MILLION POUNDS THAT IS NOW SECURED WITH A SHIPPING
DIPLOMATIC OUTLET.

I AM SEEKING YOUR PARTNERSHIP TO RECEIVE THIS CONSIGNMENT AS AS MY
PARTNER TO INVEST THIS FUND INTO A PROSPEROUS INVESTMENT VENTURE IN
YOUR COUNTRY.

I AWAIT YOUR REPLY TO ENABLE US PROCEED WITH THIS BUSINESS PARTNERSHIP TOGETHER.

REGARDS,

LUMAR CASEY
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
