Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01049345056
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 20:56:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07185607C3;
	Mon, 22 Mar 2021 19:56:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XIAKdB6h5kCq; Mon, 22 Mar 2021 19:56:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D9D3607B8;
	Mon, 22 Mar 2021 19:56:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42BE61BF27C
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 19:56:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3EFE1607B8
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 19:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hAdff6i6tz3Z for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 19:56:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com
 [IPv6:2607:f8b0:4864:20::f35])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 99C9960697
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 19:56:18 +0000 (UTC)
Received: by mail-qv1-xf35.google.com with SMTP id j17so9253612qvo.13
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 12:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=nuGQ5K6K7mjOj3wRHwkoepkWfsUAAdT4sZj/2DT8CSA=;
 b=iBPwR/E6DGTUhdnWTN65nPW1EPs1I2gzt/aDDGroOoQiAntr6EkVbs5cnZTDMfWUzu
 Gkjp6f09QQN/v1LU5zuniG7iQiyvZcyOEwRrQcEG/47YHdN21jjKOtWSWHOWFIO3Iljk
 BPovcjFKKMsbTnr6CW8H4j+74Gtt0kfAHRutYDkhb3xLi4mcW1j1uelDXY3ZWTa/Rdvt
 ziGPjDQqvlkBS0z08cWGOVu9d2COJcys9IBR8+0Sg3rXSL+didvslTXbTRv///tC+n9A
 P2UzmKYgeTePz5s8CMrOLc+e/9a4oZpjvxe43N31Uqv7i68VVXZ1XjL0cEIWJFEMTROo
 8Hnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=nuGQ5K6K7mjOj3wRHwkoepkWfsUAAdT4sZj/2DT8CSA=;
 b=VjnwcELbvo+zrNkCJ9jIdam8SCj6z7frjfPfn4rv2qrNyEm8DRPj9pgz2+Dj2Ge74e
 tkeUBeEkH+U/1d2ojSWLp5huf40cq/52j/BpYcV/v93erfkrVAdd7+bHaROgx4Iowsn1
 FiPF14OR46AI2/pTbkN1PvEL6gTG2KK3DX2M3ZL4i9dodEId1xNx/OfJk2UDXHYTNT0g
 t5vusp2Dsh8N20t0aYXvLIQoYrFhyPmm5ZAsuekuoH2GWRmLYzVEGeJTO4g5sXOkJjM1
 /vTS5kZ80oiQGofTSFqal9pDOIWH8WcVCAIuaM081+yS1SmohZQuGm9DJ2wTT4Xqm1Sc
 /S1g==
X-Gm-Message-State: AOAM530dxMCU/Cj5lU8efVMMVNpt2oLLniX5XizlI3Bj+RyPIpes5Wxr
 o30LPORrF42coRG1CeQAQVM=
X-Google-Smtp-Source: ABdhPJw3E+AWo8sJ5SeLjbEdlJ0YJrd9FzTg4YN92TkVpxwbxUhUtIKMSTZPr3o/3+BftOUVRv2l5g==
X-Received: by 2002:a05:6214:1c0c:: with SMTP id
 u12mr1459861qvc.24.1616442977524; 
 Mon, 22 Mar 2021 12:56:17 -0700 (PDT)
Received: from ArchLinux ([138.199.10.68])
 by smtp.gmail.com with ESMTPSA id b17sm9584850qtp.73.2021.03.22.12.56.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 12:56:16 -0700 (PDT)
Date: Tue, 23 Mar 2021 01:26:07 +0530
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: rtl8723bs: Mundane typo fixes
Message-ID: <YFj2V8ytnP5um+dC@ArchLinux>
Mail-Followup-To: Bhaskar Chowdhury <unixbhaskar@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20210322072808.996970-1-unixbhaskar@gmail.com>
 <YFjAMa6AJ0nOK7F3@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YFjAMa6AJ0nOK7F3@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0556900293753598476=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0556900293753598476==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HLu9vF6pIJnNX7en"
Content-Disposition: inline


--HLu9vF6pIJnNX7en
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

On 17:05 Mon 22 Mar 2021, Greg KH wrote:
>On Mon, Mar 22, 2021 at 12:58:08PM +0530, Bhaskar Chowdhury wrote:
>>
>> s/stoping/stooping/
>
>Huh?
>
>Are you _sure_ that is the correct replacement?  Last I looked it
>wasn't...
>
No it is not. Will correct it. I hope you won't mind V2.
>greg k-h

--HLu9vF6pIJnNX7en
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEnwF+nWawchZUPOuwsjqdtxFLKRUFAmBY9lcACgkQsjqdtxFL
KRX8dQgAnC3UNEv+G44swdJdDeTIueZX/jViCF3low7Jk1dZmRrjdH8fwD20ZL5f
ZZ3U21MM4MvUhIXGsdjVFTmPiLt71NShgxkeiCZXhVek5E7pRW4KcA4+pePfRlV0
sNJk/NvOIVU0sn7MhD5++SgDLxvD/D3oYqh/jmjfxSP7NEwFRVYHmjYnpt1sjX+l
S0xkKwgxkMazbdctI0TQSsDpEH7k5HJbTnU60n6Qv+D0SYDfbaFvkQnYA7EuDe/g
YcdIgY330eRYDypITD0bFPjXizeN2kgGwWZvjwJDqIUl1K3+LxCq9NNn9RSip8DF
yELn70pduCQQYT0Sm8EUY5//b4DMSg==
=W4fK
-----END PGP SIGNATURE-----

--HLu9vF6pIJnNX7en--

--===============0556900293753598476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0556900293753598476==--
