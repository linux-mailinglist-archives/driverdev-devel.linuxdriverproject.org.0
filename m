Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1206DC65C
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Apr 2023 13:43:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1143840A7F;
	Mon, 10 Apr 2023 11:43:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1143840A7F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0hrem6Nqo9pp; Mon, 10 Apr 2023 11:43:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00AB6400A6;
	Mon, 10 Apr 2023 11:43:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00AB6400A6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 31A141BF3D1
 for <devel@linuxdriverproject.org>; Mon, 10 Apr 2023 11:43:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1068B4032F
 for <devel@linuxdriverproject.org>; Mon, 10 Apr 2023 11:43:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1068B4032F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8iSm3oElV4M3 for <devel@linuxdriverproject.org>;
 Mon, 10 Apr 2023 11:43:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 453984027D
Received: from mail-oa1-x43.google.com (mail-oa1-x43.google.com
 [IPv6:2001:4860:4864:20::43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 453984027D
 for <devel@driverdev.osuosl.org>; Mon, 10 Apr 2023 11:43:37 +0000 (UTC)
Received: by mail-oa1-x43.google.com with SMTP id
 586e51a60fabf-1842e8a8825so5555863fac.13
 for <devel@driverdev.osuosl.org>; Mon, 10 Apr 2023 04:43:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681127016; x=1683719016;
 h=to:subject:message-id:date:from:references:in-reply-to:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ubBeQFmKVJLJiZhLRbznc94ycEL7CPZSbt01bSLO8xo=;
 b=DeggtKI8USj+V0WvVPfXyCg2VH95tmoFzJ5FsXaZ1j6TOHstGFMDO7TLjWq6giXVgw
 /ZNQ5mEIKLXDucGBoIHnLMRN5WYF7X37hxV4D6Frb3PXH0tBx8+IL9i8g1Xh7m3pwSJ5
 AOqz9RG5/qOwFAXbOtx2x6F+jH9QC4gdRRrwl+B3eXjQTGSU5cuF3712ugmXv20iclzc
 D/6l0VwgrUbsIfXIkpIJnAgVfVthh/peRCHue/386D92dfduvmBneMeTJw5+RgFKPwDn
 vCcd6dVhWoGXhKu01hnAbrIHmPW6SnvDOskDTOFANxN01hZY5/1TdnbevwhFcvMwWe+x
 jihw==
X-Gm-Message-State: AAQBX9dXnZ8NCBSmg89Ns+IYIubz9bHq82uIobz9qrHpesee2fOHKO63
 n9PEnbPUPO6V2g3Id/gEKZApfmFvMRCrz8/3iQE=
X-Google-Smtp-Source: AKy350bxbpkH5fj2V8tnOKEh5FU2VH4oCBu5T/jcFUIMPw49R6vwcg6e8P77gPwTIH2moVRkHNB2bdYGi/T4fvr/4Go=
X-Received: by 2002:a05:687c:14a:b0:17e:3ecd:8f3d with SMTP id
 yn10-20020a05687c014a00b0017e3ecd8f3dmr4613883oab.7.1681127016087; Mon, 10
 Apr 2023 04:43:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:1982:b0:eb:270f:65ef with HTTP; Mon, 10 Apr 2023
 04:43:35 -0700 (PDT)
In-Reply-To: <CAAB8s2Mwss_P5GHcRvb=57Zhpftj=rDv1xB+534GujxcsqOG4A@mail.gmail.com>
References: <CAAB8s2O_run_cHY=dE1mWCEwyskA_h54c35gEz3MqUMHhoqGMw@mail.gmail.com>
 <CAAB8s2P_G92coGjryy5br0E3QBuW5+9WU+nmvQShG1s=HD+pEw@mail.gmail.com>
 <CAAB8s2O9rug5jo+HZ7Y7Xur0cZXUmhWAojCp1sGL1bc_f43mfA@mail.gmail.com>
 <CAAB8s2MdZg3fFDB0OKNRzFrDcSRMieghM4ryikM9mAi-VXcTvA@mail.gmail.com>
 <CAAB8s2ORqhwrbGR9-aQv+WY0pxzX97m44G_Ea0O8Z+6Vgzrkpw@mail.gmail.com>
 <CAAB8s2OEVLnoS0_81h8v0+toaTp3oA8bxfU9kFX08=cfjtCyXw@mail.gmail.com>
 <CAAB8s2ODq9q7XDDXN+Ci1-bfNbJs6U_k6e9mBuwbnWygw2A46A@mail.gmail.com>
 <CAAB8s2Mwss_P5GHcRvb=57Zhpftj=rDv1xB+534GujxcsqOG4A@mail.gmail.com>
From: "Richard Wong of Jeff Leong, Poon & Wong,
 " <benbruceoffice2021@gmail.com>
Date: Mon, 10 Apr 2023 13:43:35 +0200
Message-ID: <CAAB8s2PaCxZpbwjOnyTD1AHBGYpQhdGSQB1=h8-PPnfJ2ij9Wg@mail.gmail.com>
Subject: GOOD NEWS
To: undisclosed-recipients:;
Content-Type: multipart/mixed; boundary="0000000000009ddc9205f8f9e2a1"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1681127016; x=1683719016;
 h=to:subject:message-id:date:from:references:in-reply-to:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ubBeQFmKVJLJiZhLRbznc94ycEL7CPZSbt01bSLO8xo=;
 b=VmtYbePycVwyd9VE1iIMLpX7VsOI+uyQD5zd2y86cmqlXsA5982E6YNvSDJUqRqOD4
 b5N4ByUxHCByMlhv2O8EGtzIVP4rdYComqfU1AB+VqS2Syho8Sil7Ob71WULp/d37et2
 03aG2WOWTg9+oWDtlbttXXjFJyH4F7wn2W/1ocp9ZsOHyQV/kn6ws3H2bE1JblXaKipV
 /uamo8aoOaJk/FFORcTMIanhEy0YHqrhbe7yb3zJ6JJ2YgjdqCbgYxQcwtz0X59/Efow
 kLmUHVe5Ig0sQXZpZd3dNsPMG3HmbljYJm09dArIC0YDLGNBTKxSy1qCByMwJ86guJlJ
 DHfw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=VmtYbePy
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
Reply-To: richardwongchambers202@gmail.com
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--0000000000009ddc9205f8f9e2a1
Content-Type: text/plain; charset="UTF-8"



--0000000000009ddc9205f8f9e2a1
Content-Type: application/pdf; name="Dear Friend!!.pdf"
Content-Disposition: attachment; filename="Dear Friend!!.pdf"
Content-Transfer-Encoding: base64
X-Attachment-Id: file0

JVBERi0xLjUKJeLjz9MKNyAwIG9iago8PAovVHlwZSAvRm9udERlc2NyaXB0b3IKL0ZvbnROYW1l
IC9UaW1lcyMyME5ldyMyMFJvbWFuCi9GbGFncyAzMgovSXRhbGljQW5nbGUgMAovQXNjZW50IDg5
MQovRGVzY2VudCAtMjE2Ci9DYXBIZWlnaHQgNjkzCi9BdmdXaWR0aCA0MDEKL01heFdpZHRoIDI2
MTQKL0ZvbnRXZWlnaHQgNDAwCi9YSGVpZ2h0IDI1MAovTGVhZGluZyA0MgovU3RlbVYgNDAKL0Zv
bnRCQm94IFstNTY4IC0yMTYgMjA0NiA2OTNdCj4+CmVuZG9iago4IDAgb2JqClsyNTAgMCA0MDgg
MCAwIDAgNzc4IDAgMzMzIDMzMyAwIDAgMjUwIDMzMyAyNTAgMCA1MDAgNTAwIDUwMCAwIDAgMCAw
IDAgMCA1MDAgMjc4IDAgMCAwIDAgMCA5MjEgNzIyIDAgNjY3IDcyMiA2MTEgNTU2IDAgNzIyIDMz
MyAzODkgNzIyIDYxMSA4ODkgNzIyIDcyMiA1NTYgMCA2NjcgNTU2IDYxMSAwIDcyMiA5NDQgMCA3
MjIgMCAwIDAgMCAwIDAgMCA0NDQgNTAwIDQ0NCA1MDAgNDQ0IDMzMyA1MDAgNTAwIDI3OCAyNzgg
MCAyNzggNzc4IDUwMCA1MDAgNTAwIDAgMzMzIDM4OSAyNzggNTAwIDUwMCA3MjIgNTAwIDUwMF0K
ZW5kb2JqCjYgMCBvYmoKPDwKL1R5cGUgL0ZvbnQKL1N1YnR5cGUgL1RydWVUeXBlCi9OYW1lIC9G
MQovQmFzZUZvbnQgL1RpbWVzIzIwTmV3IzIwUm9tYW4KL0VuY29kaW5nIC9XaW5BbnNpRW5jb2Rp
bmcKL0ZvbnREZXNjcmlwdG9yIDcgMCBSCi9GaXJzdENoYXIgMzIKL0xhc3RDaGFyIDEyMQovV2lk
dGhzIDggMCBSCj4+CmVuZG9iago5IDAgb2JqCjw8Ci9UeXBlIC9FeHRHU3RhdGUKL0JNIC9Ob3Jt
YWwKL2NhIDEKPj4KZW5kb2JqCjEwIDAgb2JqCjw8Ci9UeXBlIC9FeHRHU3RhdGUKL0JNIC9Ob3Jt
YWwKL0NBIDEKPj4KZW5kb2JqCjExIDAgb2JqCjw8Ci9GaWx0ZXIgL0ZsYXRlRGVjb2RlCi9MZW5n
dGggMTU3Mgo+PgpzdHJlYW0KeJy1Wdtu20YQfRegfyD6EJBFtOEu70UQNLGd1EmdponRoEj6YFu0
rEKmHImyq7/vzOwsuRTFKkDXeXDIvc2ZM9elvGcfvOfPn50dnR574YsX3qvjI+/beBSKEP8VUnmh
l8LfrFDeqhyPPv/oVePRq/Px6Nlr6clIwPj59XgkYV3oSS9TIlSxl4WZUKl3fgvr3nzKvNkazvRm
9Jbz25vx6It/XAaTxL8IJpG/ChLfCya5/zr4yzt/Ox6dgJTfx6P/A0fKUMSJDYdQsPBVMJHSnwey
8AGGkn4VyMyfeg7lx0rkg/J3BHknZ0eeZxlEujNIWkgh8x6CU825VDnaABi4RTJ45COMKE3PFU3e
ID2Nraa87DPNLeEl9asZLuEJPXTdingbTDJmGkevAxXRVJz6vwYq4Sn7pKfoD7z7QxD7S57kXU9o
KkUI0X/uQ7wE/Ar/1LjbVmxezejECJ4MAXD8uw2SEvkLHKPtDdrc35A44uuOHjcohAU7cyBjviwR
sme9M+STcBmEoMsW9V/DI2tI84L5yI3Fc/8BvR8UroGeknXL/XrpkcpbzeaGzZlr4phiHKT3UvsC
RlGlOUyYXHIVcyyY9gQYWyNcPU2g6hLpDP2vPp2ALrHREUgrvwY0rPcv2iAlt6lJ1qUeuZlXU/1O
+LZ6CxFhqcH5BWamZeMK9ERo1uyckdMEYOyX5KIo9iQg4/Sti1nOadFtDAjoTxs9uiELA7tGqi+u
WpNoA8Vhjxi997IlRZ+7YUdq7Rirgb3a3brpwTL+fpdYs/caFSwpPyBqDLKXn2jreWCUfw/vMBzI
RHv/STApYHnjJw80T+yxVH0iSdgS7kewLmT5oh+eh91sotJULyD771aimlbErBTxt+RNU1Jl3vBm
Dmtl2AP83JiFFpD9SK6R00nYu5tb8zUmrt0xGaWhkINMTlwKikU2JGdvPJaa234KtGzAEbak/yoT
GMCatZxH6hvb2XFEStgeSXRV556pUpFHPT3fL+8xghBErkPjsrRasCL2VahCk3MkRNcv8yYb6AU9
d8BcjY5UKCaq6vOzk9T0STpM6pKc3GrJ9MKmcms7FCmnDF0FylUQGYid/FLEvM60dISZzrWU4Gxx
DenF2sjw61WQ201DOaXVj2AkaFKzpGekI0hc/m9/oGxM+ccALit8WZjeJuMQrjBglzoekeVNdWER
utiiztaey6WVjvXQtJtHYKSfRpvGKOMcb1lQz6ExsKO45zJgokjvMblFt3wZ+9L8H14Bp9xa3mFB
NOaCLVz54Olu0SC+sGDb1WnF3YNrayVFLOJ+SGl1Ku4pm9bIqoORYkfmjqvJ8iZ3uLt1QDKNiiGk
TTLSgOwYUXHBOujY3SxmOyWp1a2znI8zvmKHGS5q683l36VuSWgm00a3+p4movE4rnu7N5DO7HwB
bC4sDF326wu9qsJlW17CbeMj+EaWi6jP+O0GlVOaAY4MwtN015cWxe0FaX7VhmE3oLhRT3rRnPt3
Vnlukm5b9YU7pVWaQSkd0PnQ3Va5u9smqRKqnz8PIYgcIohTIbMegndzroE6CfN9tGxbXm1UcGG4
Z+NsGnVbYbxrUq/7ifzn5Qe+73ZrKK7S/S1LuOPKSaX03upkcD4K9yKIDbx+6rfEdBNsYobp6rYw
h8QMbU9v335oaHIODpla1SzVGtxYej5ayEZwQv9mVlnX+7Y3MjmN24Vax+dPTVDCTdZdEk+kKDIb
n55ZzczTx92PWN2vNPBIn2keloRSfxjZ+ZDT6/7WDtNDloooPqwAtJoOhRaZiPPDQn92eKPAb4zf
oeesF/IOc3EUJ9+lt7nDRJhpHF6qCpENxtLXoPliQf1f29jrQd342b1Sbi4FF6bGA1tcvtx+X4uz
SKTFEPJDJSR2WEJkLML+jfQQgsQdghhCp0/Bn+64zpWQ4ZCc5aabYOH2NSmgqGwdZtQoEXmxV74X
Cjjo/OqL/9Tp1/8IvWq/wocsmzq0bC5FrnoIPuIFc+DzPtaUKRmi923dYdaSCWTrYgjfIYYyhwyl
CSawXQRa9+ZHjXznFjv4i4bSXy/LoZ8luj9mNKc/oZa+S7jDcqxEkQ9puo/rfwEDJasUCmVuZHN0
cmVhbQplbmRvYmoKNSAwIG9iago8PAovVHlwZSAvUGFnZQovTWVkaWFCb3ggWzAgMCA2MTIgNzky
XQovUmVzb3VyY2VzIDw8Ci9Gb250IDw8Ci9GMSA2IDAgUgo+PgovRXh0R1N0YXRlIDw8Ci9HUzcg
OSAwIFIKL0dTOCAxMCAwIFIKPj4KL1Byb2NTZXQgWy9QREYgL1RleHQgL0ltYWdlQiAvSW1hZ2VD
IC9JbWFnZUldCj4+Ci9Db250ZW50cyAxMSAwIFIKL0dyb3VwIDw8Ci9UeXBlIC9Hcm91cAovUyAv
VHJhbnNwYXJlbmN5Ci9DUyAvRGV2aWNlUkdCCj4+Ci9UYWJzIC9TCi9TdHJ1Y3RQYXJlbnRzIDAK
L1BhcmVudCAyIDAgUgo+PgplbmRvYmoKMTIgMCBvYmoKPDwKL1MgL1AKL1R5cGUgL1N0cnVjdEVs
ZW0KL0sgWzBdCi9QIDEzIDAgUgovUGcgNSAwIFIKPj4KZW5kb2JqCjE0IDAgb2JqCjw8Ci9TIC9Q
Ci9UeXBlIC9TdHJ1Y3RFbGVtCi9LIFsxXQovUCAxMyAwIFIKL1BnIDUgMCBSCj4+CmVuZG9iagox
NSAwIG9iago8PAovUyAvUAovVHlwZSAvU3RydWN0RWxlbQovSyBbMl0KL1AgMTMgMCBSCi9QZyA1
IDAgUgo+PgplbmRvYmoKMTYgMCBvYmoKPDwKL1MgL1AKL1R5cGUgL1N0cnVjdEVsZW0KL0sgWzNd
Ci9QIDEzIDAgUgovUGcgNSAwIFIKPj4KZW5kb2JqCjE3IDAgb2JqCjw8Ci9TIC9QCi9UeXBlIC9T
dHJ1Y3RFbGVtCi9LIFs0XQovUCAxMyAwIFIKL1BnIDUgMCBSCj4+CmVuZG9iagoxOCAwIG9iago8
PAovUyAvUAovVHlwZSAvU3RydWN0RWxlbQovSyBbNV0KL1AgMTMgMCBSCi9QZyA1IDAgUgo+Pgpl
bmRvYmoKMTkgMCBvYmoKPDwKL1MgL1AKL1R5cGUgL1N0cnVjdEVsZW0KL0sgWzZdCi9QIDEzIDAg
UgovUGcgNSAwIFIKPj4KZW5kb2JqCjIwIDAgb2JqCjw8Ci9TIC9QCi9UeXBlIC9TdHJ1Y3RFbGVt
Ci9LIFs3XQovUCAxMyAwIFIKL1BnIDUgMCBSCj4+CmVuZG9iagoxMyAwIG9iago8PAovUyAvUGFy
dAovVHlwZSAvU3RydWN0RWxlbQovSyBbMTIgMCBSIDE0IDAgUiAxNSAwIFIgMTYgMCBSIDE3IDAg
UiAxOCAwIFIgMTkgMCBSIDIwIDAgUl0KL1AgMyAwIFIKPj4KZW5kb2JqCjIxIDAgb2JqCjw8Ci9O
dW1zIFswIFsxMiAwIFIgMTQgMCBSIDE1IDAgUiAxNiAwIFIgMTcgMCBSIDE4IDAgUiAxOSAwIFIg
MjAgMCBSXV0KPj4KZW5kb2JqCjQgMCBvYmoKPDwKL0Zvb3Rub3RlIC9Ob3RlCi9FbmRub3RlIC9O
b3RlCi9UZXh0Ym94IC9TZWN0Ci9IZWFkZXIgL1NlY3QKL0Zvb3RlciAvU2VjdAovSW5saW5lU2hh
cGUgL1NlY3QKL0Fubm90YXRpb24gL1NlY3QKL0FydGlmYWN0IC9TZWN0Ci9Xb3JrYm9vayAvRG9j
dW1lbnQKL1dvcmtzaGVldCAvUGFydAovTWFjcm9zaGVldCAvUGFydAovQ2hhcnRzaGVldCAvUGFy
dAovRGlhbG9nc2hlZXQgL1BhcnQKL1NsaWRlIC9QYXJ0Ci9DaGFydCAvU2VjdAovRGlhZ3JhbSAv
RmlndXJlCj4+CmVuZG9iagozIDAgb2JqCjw8Ci9UeXBlIC9TdHJ1Y3RUcmVlUm9vdAovUm9sZU1h
cCA0IDAgUgovSyBbMTMgMCBSXQovUGFyZW50VHJlZSAyMSAwIFIKL1BhcmVudFRyZWVOZXh0S2V5
IDEKPj4KZW5kb2JqCjIgMCBvYmoKPDwKL1R5cGUgL1BhZ2VzCi9LaWRzIFs1IDAgUl0KL0NvdW50
IDEKPj4KZW5kb2JqCjEgMCBvYmoKPDwKL1R5cGUgL0NhdGFsb2cKL1BhZ2VzIDIgMCBSCi9MYW5n
IChlbi1VUykKL1N0cnVjdFRyZWVSb290IDMgMCBSCi9NYXJrSW5mbyA8PAovTWFya2VkIHRydWUK
Pj4KPj4KZW5kb2JqCjIyIDAgb2JqCjw8Ci9BdXRob3IgKFVzZXIpCi9DcmVhdG9yIDxGRUZGMDA0
RDAwNjkwMDYzMDA3MjAwNkYwMDczMDA2RjAwNjYwMDc0MDBBRTAwMjAwMDU3MDA2RjAwNzIwMDY0
MDAyMDAwMzIwMDMwMDAzMTAwMzY+Ci9DcmVhdGlvbkRhdGUgKEQ6MjAyMzA0MDkxMTM1NTUrMDAn
MDAnKQovUHJvZHVjZXIgKHd3dy5pbG92ZXBkZi5jb20pCi9Nb2REYXRlIChEOjIwMjMwNDA5MTEz
NTU1WikKPj4KZW5kb2JqCnhyZWYKMCAyMwowMDAwMDAwMDAwIDY1NTM1IGYNCjAwMDAwMDQwNjAg
MDAwMDAgbg0KMDAwMDAwNDAwMyAwMDAwMCBuDQowMDAwMDAzODkzIDAwMDAwIG4NCjAwMDAwMDM2
MTAgMDAwMDAgbg0KMDAwMDAwMjUyMCAwMDAwMCBuDQowMDAwMDAwNTc3IDAwMDAwIG4NCjAwMDAw
MDAwMTUgMDAwMDAgbg0KMDAwMDAwMDI2NiAwMDAwMCBuDQowMDAwMDAwNzYxIDAwMDAwIG4NCjAw
MDAwMDA4MTcgMDAwMDAgbg0KMDAwMDAwMDg3NCAwMDAwMCBuDQowMDAwMDAyODE3IDAwMDAwIG4N
CjAwMDAwMDM0MDEgMDAwMDAgbg0KMDAwMDAwMjg5MCAwMDAwMCBuDQowMDAwMDAyOTYzIDAwMDAw
IG4NCjAwMDAwMDMwMzYgMDAwMDAgbg0KMDAwMDAwMzEwOSAwMDAwMCBuDQowMDAwMDAzMTgyIDAw
MDAwIG4NCjAwMDAwMDMyNTUgMDAwMDAgbg0KMDAwMDAwMzMyOCAwMDAwMCBuDQowMDAwMDAzNTIw
IDAwMDAwIG4NCjAwMDAwMDQxNzQgMDAwMDAgbg0KdHJhaWxlcgo8PAovU2l6ZSAyMwovUm9vdCAx
IDAgUgovSW5mbyAyMiAwIFIKL0lEIFs8RUU3NzQ5MDc4MDVDRjA3QTk1MEQzQzczMzM3MzdBMDM+
IDw1Mjc5MzY1RUYzNkM2QzE2MjQyRjBBMjNEQzU0QzQ3Rj5dCj4+CnN0YXJ0eHJlZgo0NDA1CiUl
RU9GCg==
--0000000000009ddc9205f8f9e2a1
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--0000000000009ddc9205f8f9e2a1--
