Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F9A22D23A
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 01:36:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 04BD8876B4;
	Fri, 24 Jul 2020 23:36:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ES9CfF-vgjPa; Fri, 24 Jul 2020 23:36:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC3EB86970;
	Fri, 24 Jul 2020 23:36:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71E051BF365
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 23:36:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 21F81808CC
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 23:36:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dbuWPNxgBBL3 for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 23:36:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com
 [209.85.219.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 87EC287EB0
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 23:36:20 +0000 (UTC)
Received: by mail-yb1-f195.google.com with SMTP id a34so491696ybj.9
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 16:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:in-reply-to:references:from:date:message-id
 :subject:to; bh=V2KH2yJzJDctZuzUN8dCrIMw8sB/7N7FqPSwIfoX6gI=;
 b=k25Rk39s3smz4Bp8/VTterU4H81ksQr/p7Kbyu5rCEwaPCZVxR9HOr9/6sjXdV873l
 WzZq/xIJBWNICUyuG6SCi+8g1UYlO0sUoHfSsT7NhSVm6YNW8JX5cJ7OhO2MC70cfu1l
 zjJ0hAmyQVUfsMlUq9eOcBuWiOD1WIUttJ7kqpmrcons7Qi0qrMR0hEX3S3Awq6sqYWo
 Bh44cf92QEGPaqClFq1e1ns35ZAvBEvL4vhkq2RW728XV1RihSo2/lG4Dt7VFr2xucNt
 yckL1sBFK4lL8BmXkLaX8VlqQx/rE8Zw4kTsaavHPhsCWT6BpI+pFnUdUeQaaLnsYsGG
 1y5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
 :from:date:message-id:subject:to;
 bh=V2KH2yJzJDctZuzUN8dCrIMw8sB/7N7FqPSwIfoX6gI=;
 b=nLsJZEgaXEx7phdbqqBd2CStlSKy/bcuFQC1L2JJP7W+JmrlkVkZRfAFyxuqZLMVZV
 SO6cmI9hiNS6zeSo2Pw0loo0MOWu4zvCjCuBCFsOgF8SrVeZxCEJsrYt9a7sttBCO/eW
 NeyZK4ehZOak0YNJ3iSlHlCCThbaoCEfNfieAtd6N/wUbNeJgL/jKp7Yn0uAJjNryAgU
 xnpDfDf1XtN0BzJrdMI40c9R7D6rYVDx9UtYEtTQzvztNe/oIf5rJR23CRkLr8DUDDax
 xFJQnT+tNkA3M/237Bo5QggQxB+8Yo+IqsvhWTNRgd2v1jm2YiBLMrYEbOvGboCsJLcn
 UwNw==
X-Gm-Message-State: AOAM533+szbPIcmfLLXd2hkX0kD8YICvaAOVNNbtcA/J1oPnzq7HLevD
 yf0JSQXLAhqoGen7th/zFbFynbnzMS0tca28JA==
X-Google-Smtp-Source: ABdhPJy6cdpZPnD+jvQZLElXau+aP3K09lIsRRqnpgw3jR5/CAyvWnkRyqfy/6SlXr1zRolgexGqoTTmQ+2FS7WSWgs=
X-Received: by 2002:a25:ca50:: with SMTP id a77mr1261472ybg.286.1595633779700; 
 Fri, 24 Jul 2020 16:36:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a81:7ad1:0:0:0:0:0 with HTTP; Fri, 24 Jul 2020 16:36:18
 -0700 (PDT)
In-Reply-To: <CAE6v-1n0zFSjCrpNXr7zuX2AunqY8EYFp-bmxJ6tkXaWw7F=Tg@mail.gmail.com>
References: <CAE6v-1=vn6n-qz9EAQmo9P0APRQFTcdq884mGfOPnEZaW6Lk_w@mail.gmail.com>
 <CAE6v-1kxfms1YW+uyQ_2sPP5VOvB_zbdMNb-uyYR1iscWx-mfQ@mail.gmail.com>
 <CAE6v-1n8qFTE7XwNfjAmU1zGZcyWuBJh=LpjmUERxhOS41iirQ@mail.gmail.com>
 <CAE6v-1nkX0eYO9mN0QRdi91O-EvUxcX+9gYKsxBtgjSqk5Yokw@mail.gmail.com>
 <CAE6v-1nDfD5Me+mX6xZWPaK0POydW57sDoV5FVNR6Gh_ieUMqQ@mail.gmail.com>
 <CAE6v-1nxcbpHsb=KFAw6TEdZDRWzsoMD-0pr1m3aCx02Upb5SA@mail.gmail.com>
 <CAE6v-1n6dwBvGQ+ydNayz0uB9DkhJKxT_Yz76USUV1CYjCGBkg@mail.gmail.com>
 <CAE6v-1=JkT2_S2ZT1XhpQhcqHxDDhOMKOW_fkATDgLUJs03UDA@mail.gmail.com>
 <CAE6v-1k1-zaLYHPppSK7Q1ziOJVezHcegVwq21TAPaLHzCZEDA@mail.gmail.com>
 <CAE6v-1neQcLS2gUZmVwtVKaogi4MKh20bH+3vSm3rZpbT5eA0Q@mail.gmail.com>
 <CAE6v-1kGX_1T=aiaKLmuGE=jCyZF3=B1+hfYHvCUcgbUL=Wm=g@mail.gmail.com>
 <CAE6v-1kL_qr7GMA7vxhexPzQQyviC_ah4fB9ZcnhjgwLN77fmQ@mail.gmail.com>
 <CAE6v-1=T1pUuVWG98jxmPAvH5TS__Zuu3HnQkVwLGD7Rgtr5tQ@mail.gmail.com>
 <CAE6v-1=SnDHcR=O4ramaAcP+dAPcsBYW9Zh1j2LQ0ZLSHwFgGg@mail.gmail.com>
 <CAE6v-1=ZS7s7fmHTTmiHr7+SPHWLC80i0RvNNOf_TyxT5VFB5A@mail.gmail.com>
 <CAE6v-1=uqz07WsY-KwmeaJvBeXhvi8XxuprAdiycXUO+YGJR1A@mail.gmail.com>
 <CAE6v-1k9YUqdONa3pDChOr2tbdaond+jcNcU-ZPqMrfApGGg+A@mail.gmail.com>
 <CAE6v-1mpHo9WBZbUCsedeOu9of8S44ZYj6cryViTBej8tVAr9w@mail.gmail.com>
 <CAE6v-1mxY0N6r7TshZgPifFiq1tPV7gAW2fAQp1FV7bZbog3zg@mail.gmail.com>
 <CAE6v-1=+i0VgWp4O3G2NVgO9p2N3M1_cisgEKjqLG6ngR16X7Q@mail.gmail.com>
 <CAE6v-1kW88MJOimAjXHLjeXSYJfGXE9q3Ng-B57_vTOwMF0OcA@mail.gmail.com>
 <CAE6v-1=3z4dy2XbUqbmgW9VqGF9vRmUwiuq8s6hQbxgSKh5S8g@mail.gmail.com>
 <CAE6v-1nw5bySA_tucdrqDh5PDBPdWeNT8HHV4xUv6gX8-w2Hgw@mail.gmail.com>
 <CAE6v-1=nVEOdxBN9T8=MCVhoW9msW6hYypZrPnPx7=9BAT_whQ@mail.gmail.com>
 <CAE6v-1=cegFAQw6UXzZPN5vsbZq0cEV8FhZi+-rh=3EmZM3giw@mail.gmail.com>
 <CAE6v-1mLXO8yPq=b-n1rHZBUqsGbKk=8buWULBimy8JEr95EpA@mail.gmail.com>
 <CAE6v-1=_zUbzH9+hJ+x+Yr+qP6mbt27WYLk_x5P2JRSpO9V8wg@mail.gmail.com>
 <CAE6v-1nNd5aD-foiUrD4btmsMyJvMSLJ2a7LCx+-Qst420YHYg@mail.gmail.com>
 <CAE6v-1kqJVDttLc4faRLgG7uXHU16kKvJ656FM2XMWJGSW_udA@mail.gmail.com>
 <CAE6v-1=dhJ1+hp8GLaCD=pOgQLdO+ahiJ6fKAcp037LUW=Q+Vw@mail.gmail.com>
 <CAE6v-1=Hpxr289T4LhobRLW2Qsw6faEYT7AMh4xZXdt9Bdf-kQ@mail.gmail.com>
 <CAE6v-1m5u5ZxX7HDSD9bB1ZL62JJYmA0qC50xYbhTceGgb=6fg@mail.gmail.com>
 <CAE6v-1nM6ihqKcP9bpKYFny0TPr3fBg338419GL7eKV=XOiHUQ@mail.gmail.com>
 <CAE6v-1naoHXcbGM+y+b0pAtKOPUab7eW2xojQ7cFcs6uDkPfnw@mail.gmail.com>
 <CAE6v-1kk+PghQ82Vv-oN74qSjPTAH+oq=RZD-HR2xa6Gk7-bzA@mail.gmail.com>
 <CAE6v-1mMn0FG-xDtoz3LJXJCXdEa2g-cHrXH6VF-nu_oXGePmw@mail.gmail.com>
 <CAE6v-1nLAD0kx_L=DdBWUEnaZL1JT8XkN2pqi4Nsz9X0vebxew@mail.gmail.com>
 <CAE6v-1mokn=LESoB2HspGN8W828f57CfvfUpjBgDB=GZ7=dKXw@mail.gmail.com>
 <CAE6v-1k2=j5dK=qBjDdcMtFOh8bnveMJS1_Rpqtg7sFTbAGERA@mail.gmail.com>
 <CAE6v-1=+kEhtVrBH8+fNDBGyNivnN8ogxD6WabBpvzvqYCzDkA@mail.gmail.com>
 <CAE6v-1=CtY4L+K+DpENr7az_xh8Gi5Oqq3DUhmQ=6hFcQi+RNQ@mail.gmail.com>
 <CAE6v-1nEN7Jvn9CkTnveOgDkYAeSdkRbELQXbccfZdb-m4O4eA@mail.gmail.com>
 <CAE6v-1=uqTp7=WJtXEm+0uirrHJvODY-aYjHEuXkePSRH0-ZoQ@mail.gmail.com>
 <CAE6v-1kNh0=ZMkU+3jtjYsk-gVq=J4TAnN6OZBbpg8mGZnZwbQ@mail.gmail.com>
 <CAE6v-1kf+Z6_B5-04qPtaBgMgek4-0OgCOB5BFQb13SCWTcsGQ@mail.gmail.com>
 <CAE6v-1k1HHaovO1L6Ojgk9KyTCmjf4Cd0sjJr-ksSgQYtT0cfQ@mail.gmail.com>
 <CAE6v-1nWtpHba+Xvah2O2Up-ajyhQFmahJBDSpgZGCSA4FTcvw@mail.gmail.com>
 <CAE6v-1=eNKWk_stPv9ten83eost_Eub1W-fwbJuGDZNUcVbe7g@mail.gmail.com>
 <CAE6v-1ks4g-U67fUmQ0-yPfS+2AP0n=cB6hoYEGxPp4V3dWbCA@mail.gmail.com>
 <CAE6v-1kOXUN7EkRuiuyfNgKt72YPkiTwPHWuCQsp6WZarqOCBw@mail.gmail.com>
 <CAE6v-1kGBeO13Z5UbeFPqA42=xbpctw=aFo7UL=CTLoSuno6SA@mail.gmail.com>
 <CAE6v-1kDFySJmTTxzDpuE-dfyA72+=+ORonaPJ8gFJgT4nKGHQ@mail.gmail.com>
 <CAE6v-1=2uieO2wK_4ZWK8bkbhU1KqPykjuBP6ruFXXSj=pHKWA@mail.gmail.com>
 <CAE6v-1mbNxS88D9Vp5Q_7DP8jQ=AiatyYF2qdbG9dtVqLtWsTg@mail.gmail.com>
 <CAE6v-1m_t0cxDwFxxA-p29gcqRufsqt-cucRZXF1+VNgGOAi4w@mail.gmail.com>
 <CAE6v-1mBHm9oF9Hkd7sd9iV+33usHRvvNECuzz8AaX0KriyGQQ@mail.gmail.com>
 <CAE6v-1kETTxKp1ahgSWMsm5PyHNJkTGgaq9L6tvm-j+qvYoCHw@mail.gmail.com>
 <CAE6v-1n6gdn9YQYRwva65Z9FHCUP-c-5mWYxAi=6nR84TuBp2g@mail.gmail.com>
 <CAE6v-1nZ+_V=KN12gSdy87tMj6zCp2dKVkbkd3gKOM3KWNrD6g@mail.gmail.com>
 <CAE6v-1=JRZrxpKooY_p=iipSci37GuwDGWXMGOXFHhZ52f8D-Q@mail.gmail.com>
 <CAE6v-1=Ze91BSiEXDvYrtyyCdnPDtZq+0n6F61HBMZ9zeZBbnQ@mail.gmail.com>
 <CAE6v-1mOzrLV2ugGLAqEvt=Z2fMvcSAHVyvww==LcpymJdudBQ@mail.gmail.com>
 <CAE6v-1kdzB15aJfP+rZHEEfuffeO_6ZAVYdDHZbz0FgBpLu-Jw@mail.gmail.com>
 <CAE6v-1=P_AJuCwOiXv8exjqgm7f7yNOmPwqJXPgSMxGutw8AFw@mail.gmail.com>
 <CAE6v-1n0zFSjCrpNXr7zuX2AunqY8EYFp-bmxJ6tkXaWw7F=Tg@mail.gmail.com>
From: "MEGA HAY LOTTERY DIRECTOR." <bobomor4@gmail.com>
Date: Fri, 24 Jul 2020 23:36:18 +0000
Message-ID: <CAE6v-1mf9x79xQOwuQHNemn9+p3cf1wbrpprSOh7T1kvXBX8NA@mail.gmail.com>
Subject: Good day
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
Reply-To: cargoexpresstg@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Lucky Winner.

This message is to bring to your notice that your email address won
the sum of 1.700.000.00 dollars only { ONE MILLION SEVEN HUNDRED
THOUSAND DOLLARS  } in our lottery company MULTI LOTTO this month and
your money is converted into ATM Visa Card to be deliver to you
through Courier delivery company.

We has deposited your visa card parcel with the courier company  and
instruct them to help us deliver your visa card parcel to you as soon
as they hear from you, Therefore kindly contact the delivery company
through this email here { cargoexpresstg@gmail.com } and ask them to
deliver to you, your ATM Visa card that is deposited in there company
custody by Multi Lotto Lottery Organization.

Sincerely.
Mr Oscar Felix.
Multi Lotto Company Director.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
