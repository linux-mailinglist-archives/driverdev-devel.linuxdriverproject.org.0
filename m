Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E326B55D3
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Mar 2023 00:42:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3069441516;
	Fri, 10 Mar 2023 23:42:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3069441516
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rt8az7R64joL; Fri, 10 Mar 2023 23:42:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7870414CE;
	Fri, 10 Mar 2023 23:42:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7870414CE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 450131BF409
 for <devel@linuxdriverproject.org>; Fri, 10 Mar 2023 23:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1EC2082122
 for <devel@linuxdriverproject.org>; Fri, 10 Mar 2023 23:42:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EC2082122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zv5unihqBVdP for <devel@linuxdriverproject.org>;
 Fri, 10 Mar 2023 23:42:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECF1982114
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ECF1982114
 for <devel@driverdev.osuosl.org>; Fri, 10 Mar 2023 23:42:30 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id bh20so5509980oib.9
 for <devel@driverdev.osuosl.org>; Fri, 10 Mar 2023 15:42:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678491750;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wrT6U61yBEFkoCh+ZGaE2qToboJ50CjPheKyb4Y2PNY=;
 b=5ZXUIczh4Td7OS73sPBTGgsxpzcaWMO5yonpbJBCMyS4AiIBFZkdf9DAh0daw+qQx2
 ceuHRH/i1MHlCBTNFxn+kzgHbssLxBF6Q3tV0rDmuLoWDjWwRw9PEH6ITz+L/GbO+ot+
 D3DV99wn7c8vyHZvlkHRXj7ZHheF7j68ExPgtUdEYhaKtD6KUtH8gfntPhhMrR4I2iok
 jQZCKjcUgL41PFuqUhFC4r+4+f1CgFyhkNH7XSgnYHq623YU3BcDivzx/a3jXFc2DIMG
 rVHoca7qYe6e8M0jqhRihV9szLK6BiJQsWitiaAuMyUihjiAvB1I6BmZFkkfuC67SHab
 CQvA==
X-Gm-Message-State: AO0yUKUMzwmDMMGK4ryAzO3mCh/RCnpoL1OUnFmu4uAL60xdmSMYjAmi
 1COSo4pULeMVxkPDg+1MR0j3atUhNUE2FJ6uDNc=
X-Google-Smtp-Source: AK7set+Gsf0jc/VhALyDtrHjWRlRYzzjFpfwXRWiqF5UPWvWdc6pyKEwzbEwFXVhaYRHUqUTVc3uDdXqXkbbijbf3uk=
X-Received: by 2002:a05:6808:8f7:b0:36e:f6f5:5cf0 with SMTP id
 d23-20020a05680808f700b0036ef6f55cf0mr8348872oic.3.1678491749915; Fri, 10 Mar
 2023 15:42:29 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac9:6a77:0:b0:4c2:da7b:b91 with HTTP; Fri, 10 Mar 2023
 15:42:29 -0800 (PST)
From: Aisha Gaddafi <agaddafi332@gmail.com>
Date: Fri, 10 Mar 2023 23:42:29 +0000
Message-ID: <CACZyAYvVr3hBR_zY_JRaRNb-kmhUmgMBs9ZGJvppX0iKMuVnEw@mail.gmail.com>
Subject: Aisha El gaddafi from Libya need your asisstant in your country
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678491750;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wrT6U61yBEFkoCh+ZGaE2qToboJ50CjPheKyb4Y2PNY=;
 b=dRPOtitzoQadcW5EpFFXN7WEwjXVjexpyj5ROyrgSvCXZrXJbZ/Jju7XX6/zBzrHM8
 ePJS7Pc53pr+Eb5PjjhP+hYKQvDxUcXGkp6J396cBXOPnKIahw1VoqlU8vzUDuyBSRaA
 s9jk2y5PGSmmNKUzgL9uruog2nU2IWEwWocXWO9YD6v5ski793i/1WhgCP61KEYkZkZN
 rvjaS7d7Q6qOvCYtdpu5EJpnUuBrZKVGLqYvdl6s+ZqwyKiYWI+klSwWhWaAL8q/dRCl
 JMkYsTIxcIls6ow452b8GUbLcpHPmt44VKL5D9JSyV8TdxnopqzFXdr08Fj4n0Shbz9d
 keHw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=dRPOtitz
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
Reply-To: aishaelgaddafi@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I came across your e-mail contact prior a private search while in need of your
assistance. My name is Aisha  Al-Gaddafi a single Mother and a Widow with three
Children.

I am the only biological Daughter of late Libyan President (Late Colonel
Muammar Gaddafi).I have investment funds worth Twenty Seven
Million Five Hundred Thousand United State Dollar ($27.500.000.00 )
and i need a trusted investment Manager/Partner because of my current
refugee status, however,

I am interested in you for investment project assistance in your
country, may be from
there, we can build business relationship in the nearest future

Your Urgent Reply Will Be Appreciated if really this transaction interests you.
contact me at this my private email  address
( aishaelgaddafi@hotmail.com ) for further

discussion.

Best Regards
Mrs Aisha Al-Gaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
