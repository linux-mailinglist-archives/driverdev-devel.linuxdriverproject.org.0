Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 164F14E4CEC
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Mar 2022 07:50:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 607CD60B0E;
	Wed, 23 Mar 2022 06:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1rd7lgMDv7UD; Wed, 23 Mar 2022 06:50:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B84E60AC0;
	Wed, 23 Mar 2022 06:50:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 005C71BF5AD
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 23 Mar 2022 06:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE7B260B0E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 23 Mar 2022 06:50:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E9HCjRSDPI1u
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 23 Mar 2022 06:50:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A79F360AC0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 23 Mar 2022 06:50:31 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id w25so646824edi.11
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 22 Mar 2022 23:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:in-reply-to:references:from:date:message-id
 :subject:to; bh=3uXPBCjbKDf6MSQFK1r/Wo1P1Nt4GLx/YIZIqkOYc8E=;
 b=LdTShuzvcXsKk09aZi++0kkkoK7iGVAuInLpbBu3ioztNmQnwwYY3u9WirNYBHGhNS
 gYM1nxdvOtSkEj5ZipIjvMXsdtbiNv2GNuNtMI2IKMmbI8F/MRS9CMcewM8zglJvZ1Ey
 b2f0XJoDHxcGw/JpEauGC5MRIehnD9vmJe0pBi0NpdMwv6Qqg7WdhsepKmKGedellrFd
 7JA8QPc20ysyFHvQKQ7sEMfR/AhP88homrLWUSwcyJ1IHq8s9SlqOAN4GAVzp2Y4vEIn
 16rYKmbG9jOGdHbRZGoHBbNOP00nlVujs96MqqHqKt+wX2XhFQT+Lsv6G+792vzLSr2K
 Mr2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
 :from:date:message-id:subject:to;
 bh=3uXPBCjbKDf6MSQFK1r/Wo1P1Nt4GLx/YIZIqkOYc8E=;
 b=W0HbG0G0QD3Em4lYSa+ttJJ2hGHoPTfIY4bbEvY/AMrM94wXTwjWsNPDSn4XNfU8no
 /dL8oMlu/Pfw+PGF2PXfVx1DbYxxthOtWad//GdsOgOSF+EaU0sOIY4h1o17ViLff2EB
 YMBmSg1CWsiIJk6QjdLNsyo5bhoRxQJ5FthnbcZ2WHWDA9FItidOGKM5a4hMGN609FAL
 odcO7IXBju/fEnlYWMmYYylDotzIVWBDJ5zHe4ejTsTleZGDZTjdfz+OpCQTzgPztjAq
 lECrz1Xq3+RscS71Gem/b7uCkUm4F899+84ioOf/mJ7+szNWyaKH0HeoivHq4vd/owqE
 DmFA==
X-Gm-Message-State: AOAM533cxmjvwCACtrXt9jKVQv+qbQTnglT2ryD4oSGuwFW+9JzFYVqb
 nf/2HxnIZvBrjLim2RU/tU+AeyZp/04OgSxrOs8=
X-Google-Smtp-Source: ABdhPJxg8tNwAYn43Ad8cMKY7AYzWemiDWWLRcOY/LSByO4OlmBgznegb8mwtQzw8tgRGj5UW1gq7oI3EYncJNmZdAo=
X-Received: by 2002:a05:6402:4396:b0:418:d776:14c1 with SMTP id
 o22-20020a056402439600b00418d77614c1mr33671237edc.127.1648018229214; Tue, 22
 Mar 2022 23:50:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6400:4213:0:0:0:0 with HTTP; Tue, 22 Mar 2022 23:50:28
 -0700 (PDT)
In-Reply-To: <CAAM8YDMT1iE5Pq=VX5rBdwnpF69nYYEgWYf+He1dp+1-VuiQ0g@mail.gmail.com>
References: <CAAM8YDPPWVtZQcDiFkJmvUaGa5SjurQbADizs++mqjiG8sm3Tw@mail.gmail.com>
 <CAAM8YDOgU-840em+AJNw4sGjFjO0bTDzi_E-ybJRro5Bnuf-xA@mail.gmail.com>
 <CAAM8YDOfhDUBM_MP2S3kLBwJb_J6NF=ZTNM2QWTTr0zCuitXvg@mail.gmail.com>
 <CAAM8YDO-oy8NTFE=mL5+oRnZN9MM_JMc=BTR1BGcfTX5-Vf84A@mail.gmail.com>
 <CAAM8YDNE5MXTzSGGPD_Q1X9hKbEURsGhX=E=XMK_YxzFH72-Kg@mail.gmail.com>
 <CAAM8YDMw025xCvx=+4H7F-3s8fAHseRBJO2RHiisrCzgXicE7A@mail.gmail.com>
 <CAAM8YDNivN=Vy7CEDRoeekcci79GO=pmPr0v4FC6UGLTxvhwCg@mail.gmail.com>
 <CAAM8YDOaurYGNStmTHcyoyFmo54_NJbvDoij4xkUxLxT-pM25g@mail.gmail.com>
 <CAAM8YDOkz45X=7ATxPsn6EQFKWvkiUR5W8138XzbLw6MZDOPZA@mail.gmail.com>
 <CAAM8YDON36NwLMiyDane7LzqK5DbuC6R+dfk62h848zf6vvXVA@mail.gmail.com>
 <CAAM8YDNiA4+NaSxpjYmH4YR9_n6WJwmHzKEi_iXxtsab1VSqag@mail.gmail.com>
 <CAAM8YDPNJ6tKFYc716XvkVr-6sQ9mLAxndxboXw5o2hMxqXneA@mail.gmail.com>
 <CAAM8YDMwtO=JfC00RGnYpReRLGkEea-5u1EjrQWSyRO0BzsV0g@mail.gmail.com>
 <CAAM8YDMVGXcJ80xC4y7ymWkwVfttpTook7Qa8jsQZMi0p72eoA@mail.gmail.com>
 <CAAM8YDMRV0cJXESVcsVm4rfE863rS94qH77CcdWf3m0yZRBc6A@mail.gmail.com>
 <CAAM8YDPJZFRH11C2+J09pwdCsmm76OVP1sNcXNh+p1QChZRucg@mail.gmail.com>
 <CAAM8YDMNHiFJuaqEmz3ay5UW_NiRk+LQxFFeThocrkO2d3-tzw@mail.gmail.com>
 <CAAM8YDM3maReXFN9U4rgCtxm17xvAeJm+wNDLfvvPK2ZxKbVXg@mail.gmail.com>
 <CAAM8YDOJLKUAG32sXjR_OUQh342-0d19up80gVmTeDpRAoeFvw@mail.gmail.com>
 <CAAM8YDMCUmB2ZeuMZx47O7-3od56feaEezhTkmDbK=w5w3Qmxw@mail.gmail.com>
 <CAAM8YDMnLk+N9DPKRUfZywH2kbSVD3fWYtrZt0vv1i6QhewZwQ@mail.gmail.com>
 <CAAM8YDN0DgwZZJC-83bKc66wxZ1anqhzvovs0y3WeoKfmdkvnQ@mail.gmail.com>
 <CAAM8YDO36dg3Ers9Z=qrt9rHsCMieaR0PJb6EN0eAmhy=pT3Hg@mail.gmail.com>
 <CAAM8YDNkssTpK3DdyaJS7YjVwVs47HzTRPVYmPLSNRuz=tu8Yw@mail.gmail.com>
 <CAAM8YDP_nJXntbG_MyKAKfVp1=Cca236Y=rM428H3XmKxbap-g@mail.gmail.com>
 <CAAM8YDO8EghY5KfG2BogR3jwQibZEbEx239-7NUdzeN_oRFYDA@mail.gmail.com>
 <CAAM8YDM=p0D9jmKvpMWW3SLRmT9qFKi-vsjnECVEbY6wKOo6hg@mail.gmail.com>
 <CAAM8YDMrsMT=3TiGTgMfjMwWKbRsG989Sg-V4wV+WBdESKSHPg@mail.gmail.com>
 <CAAM8YDOM1PZOfDbLx4qSo8hV175gJz_F+sj_1GPWG89Em1-=pQ@mail.gmail.com>
 <CAAM8YDMT1iE5Pq=VX5rBdwnpF69nYYEgWYf+He1dp+1-VuiQ0g@mail.gmail.com>
From: "Mr. Micheal Thompson" <mathewsriaan4@gmail.com>
Date: Wed, 23 Mar 2022 08:50:28 +0200
Message-ID: <CAAM8YDNJ6d6cwJtriwOqeqqZPg3LZzLGFCp6xHff32K7Tny6nw@mail.gmail.com>
Subject: Business Venture.
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
Reply-To: michealthompson2019consultant@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ATTN: Managing Director,
Sir/Ma

My investor will sponsor your project. My name is Mr. Michael Thompson
a financial consultant and agent, I contact you regarding the
interested project owners and investors to our project financing
program. I am the investment consultant & financial officer of a UAE
based investment private business man who is ready to help you with a
loan to your company and personal business projects.

We are ready to fund projects outside the Dubai or Worldwide, in the
form of debt finance, we grant loans to both Corporate and Private
Companies entitles at a low interest rate of 2.5% ROI per year.

The terms and conditions are very interesting. Kindly reply back to me
for more details if you have projects that need financing, get in
touch for negotiation.

Kind Regards,
Mr. Michael Thompson,
Email: michealthompson2019consultant@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
