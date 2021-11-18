Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C35A74565C6
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Nov 2021 23:35:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0264581B48;
	Thu, 18 Nov 2021 22:35:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oRuFWdEJFxry; Thu, 18 Nov 2021 22:35:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36771819B4;
	Thu, 18 Nov 2021 22:35:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5118D1BF5B4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Nov 2021 22:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3DFC9408F2
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Nov 2021 22:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wJOZFdtcykkk
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Nov 2021 22:35:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E5A02408E6
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Nov 2021 22:35:29 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id f18so33627740lfv.6
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Nov 2021 14:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=r5VWgyOUQdNkdaAVbVUgbMRuDo1nRNpwgf2Foy2l9IA=;
 b=mRkWdKdQVQ5Z05N87DWIgSqskcQqNhTtZRga+clqknNZnviYBoGN1B7LR7vGFjPJ6u
 /BFf5PmHnly9Gv5lpa+hnS945S0C7lfeibIcppxnX/PiRe6n8Tx2D7kYKCz8L3G/p6pI
 vEcQ/519ip8eZw+g69Qk6te+JmYrnSPkwuGXw5Z+SF9iDkXZrPzZyDFZJd7EUlswSBlZ
 bt4/1xy+32SF1BSoZtetBgzwsNTV4DtQBY9OREF9p1KRSuMJbvaWZ8OxVCYsZeqmxVUz
 z6ZRg/lLETh/JHs+6WG19m2c1hI/TIZBJAdFnbHzR89zOmDT1zGtzJd+S5L7vD2BK3xI
 GKjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=r5VWgyOUQdNkdaAVbVUgbMRuDo1nRNpwgf2Foy2l9IA=;
 b=PcMW8kOg9Hc9YqkzQbFYGbLVOaf2+Dk20wcnpZhMGUWARycezRE5P29fvEWh15VL24
 i7JUl14eUneEWA/sLjZPQYiljsbpZNiHppfAIMhAgdVhPOc55Ytz0ArXLeBSh8KlTd86
 eIP8aYyytiIK/yNNkvmwKfgkbg+YMET9gZU6kJExiVAVgJ8r7hqzYWgQ8S1F9sNTKLXw
 oMfeCZbQdQ3kO5SocGgTLgAllDIUrrGOxqhXM0eC4tfwye7Mmt1VyhlIugIioybqWQw7
 VFOxtgEMG1tnNHr9a9AKpsST6JDK8KnYiKUMmWMPVaE4TYiJPKHS6sQ1seG/2P/BxvGk
 htXg==
X-Gm-Message-State: AOAM530czkq+KWkcIxP23e3ebvNW9UOLV163ePnUcMzIFdFS1X/qk0HI
 rnX435vpot+llpVsiPn0JZ72SVPKKS2dsjW/W1w=
X-Google-Smtp-Source: ABdhPJwMhWKpgCCuA+HDWA0vRAJ7iaLT6gFB/iMqynFh/WXa4UxGF4fAuLu2bzHJcj7pSeS52fCuilLtC8DSVfFKyY8=
X-Received: by 2002:a2e:b053:: with SMTP id d19mr20343912ljl.231.1637274927666; 
 Thu, 18 Nov 2021 14:35:27 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6504:992:0:0:0:0 with HTTP; Thu, 18 Nov 2021 14:35:27
 -0800 (PST)
From: mrEmmanuel william <mremmanuelwilliam7@gmail.com>
Date: Thu, 18 Nov 2021 23:35:27 +0100
Message-ID: <CAHD1u+zkYtoN7Xo7opzfJd1LoD+VcjYJ5_umzoPRb0AYMnK8NA@mail.gmail.com>
Subject: =?UTF-8?B?RE9CUsOdIERFxYcs?=
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
Reply-To: inforgroup.ubabank.tg.net@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TUVEWklOw4FST0ROw50gTUVOT1bDnSBGT05EIChNTUYpCk1lZHppbsOhcm9kbsOhIGplZG5vdGth
IG5hIHZ5cm92bmFuaWUgZGxob3YsCiMgMTkwMCwgUFJFWklERU5UIEFWLkRVClJFRjogLVhWR05O
ODIwMjEKClbDocW+ZW7DvSBwcsOtamVtY2EhCgpWIHNrdXRvxI1ub3N0aSBzbWUgYm9saSBzcGxu
b21vY25lbsOtIG5vdm92eW1lbm92YW7DvW0gbWluaXN0cm9tIGZpbmFuY2nDrQphIHJpYWRpYWNp
bSBvcmfDoW5vbSBtZW5vdmVqIGplZG5vdGt5IE9yZ2FuaXrDoWNpZSBTcG9qZW7DvWNoIG7DoXJv
ZG92LAphYnkgc21lIHZ5xaFldHJpbGkgbmVuw6Fyb2tvdmFuw6kgZmluYW7EjW7DqSBwcm9zdHJp
ZWRreSwga3RvcsOpIHPDuiBkbGhvCnNwbGF0bsOpIHZvIHZsw6Fkbm9tIGtvxaFpIE9yZ2FuaXrD
oWNpZSBTcG9qZW7DvWNoIG7DoXJvZG92LCDEjW8gcHJpbcOkbG8KcHJlbmFqw61tYXRlxL5vdiBk
byB6bcOkdGt1LCBrZcSPIHNpIG15c2xlbGksIMW+ZSB2IHByaWViZWh1IG7DocWhaG8KdnnFoWV0
cm92YW5pYSBpY2ggcG9kdmllZGxpIHBvZHZvZG7DrWNpIHBvdcW+w612YWrDumNpIG1lbm8gT1NO
LiBQb2TEvmEKZGVubsOta2EgdWxvxb5lbmlhIMO6ZGFqb3YgbsOhxaFobyBzeXN0w6ltdSBzIHZh
xaFvdSBlLW1haWxvdm91IGFkcmVzb3UgamUKdmHFoWEgcGxhdGJhIG1lZHppIDE1MCBwcsOtamVt
Y2FtaSBrYXRlZ29yaXpvdmFuw71jaCBha286IE5lZG9ydcSNZW7DvQpsb3TDqXJpb3bDvSBmb25k
IC8gTmV6YXBsYXRlbsO9IGxvdMOpcmlvdsO9IGZvbmQgLyBOZWRva29uxI1lbsOpIGRlZGnEjXN0
dm8KcHJldm9kdSAvIHptbHV2bsOpIHByb3N0cmllZGt5LgoKTmEgbmHFoWUgemRlc2VuaWUgemlz
xaV1amVtZSwgxb5lIHNrb3J1bXBvdmFuw60gYmFua292w60gw7pyYWRuw61jaSB6Ynl0b8SNbmUK
emRyxb5hbGkgdmHFoXUgcGxhdGJ1IHYgc25haGUgcG9kdmllc8WlIHbDocWhIGZvbmQsIMSNbyBt
w6EgemEgbsOhc2xlZG9rIHRvxL5rw6kKc3RyYXR5IG5hIHZhxaFlaiBzdHJhbmUgYSB6Ynl0b8SN
bsOpIG9uZXNrb3JlbmlhIHByaSBwcmlqYXTDrSB2YcWhZWoKcGxhdGJ5LiBPcmdhbml6w6FjaWEg
U3BvamVuw71jaCBuw6Fyb2RvdiBhIE1lZHppbsOhcm9kbsO9IG1lbm92w70gZm9uZCAoTU1GKQpz
YSByb3pob2RsaSB2eXBsYXRpxaUgdsWhZXRreSBrb21wZW56YcSNbsOpIHByb3N0cmllZGt5IDE1
MCBwcsOtamVtY29tIHYKU2V2ZXJuZWogQW1lcmlrZSwgSnXFvm5laiBBbWVyaWtlLCBTcG9qZW7D
vWNoIMWhdMOhdG9jaCBhbWVyaWNrw71jaCwgRXVyw7NwZQphIMOBemlpIGEgbmEgY2Vsb20gc3Zl
dGUgcHJvc3RyZWRuw61jdHZvbSBrYXJ0eS4gQmFua29tYXQgVmlzYSwga2XEj8W+ZQppZGUgbyBn
bG9iw6FsbnUgcGxhdG9ibsO6IHRlY2hub2zDs2dpdSwga3RvcsOhIHVtb8W+xYh1amUgc3BvdHJl
Yml0ZcS+b20sCmZpcm3DoW0sIGZpbmFuxI1uw71tIGluxaF0aXTDumNpw6FtIGEgdmzDoWRhbSBw
b3XFvsOtdmHFpSBkaWdpdMOhbG51IG1lbnUKbmFtaWVzdG8gaG90b3Zvc3RpIGEgxaFla292LgoK
WmFiZXpwZcSNaWxpIHNtZSwgYWJ5IHbDoW0gYm9sYSBwbGF0YmEgdnlwbGF0ZW7DoSBwcm9zdHJl
ZG7DrWN0dm9tCmJhbmtvbWF0b3ZlaiBrYXJ0eSBWaXNhLCBrdG9yw6EgYnVkZSB2eXN0YXZlbsOh
IG5hIHZhxaFlIG1lbm8gYSBvZG9zbGFuw6EKcHJpYW1vIG5hIHZhxaF1IGFkcmVzdSBwcm9zdHJl
ZG7DrWN0dm9tIERITCBhbGVibyBha2Vqa2/EvnZlayBrdXJpw6lyc2tlagpzbHXFvmJ5IGRvc3R1
cG5laiB2byB2YcWhZWoga3JhamluZS4gS2XEjyBuw6FzIGtvbnRha3R1amV0ZSwgc3VtYSAxIDUw
MAowMDAsMDAgVVNEIGJ1ZGUgcHJpcMOtc2Fuw6EgbmEga2FydHUgYmFua29tYXR1IFZpc2EsIMSN
byB2w6FtIHVtb8W+bsOtCnZ5YnJhxaUgc2kgcHJvc3RyaWVka3kgdiBha29ta2/EvnZlayBiYW5r
b21hdGUgdm8gdmHFoWVqIGtyYWppbmUgcwptaW5pbcOhbG55bSB2w71iZXJvbSAxMCAwMDAgVVNE
IHphIGRlxYguIFbDocWhIGxpbWl0IG3DtMW+ZSBiecWlIG5hIHBvxb5pYWRhbmllCnp2w73FoWVu
w70gbmEgMjAgMDAwLDAwIFVTRCB6YSBkZcWILiBWIHRlanRvIHPDunZpc2xvc3RpIHNhIG11c8Ot
dGUgb2Jyw6F0acWlCm5hIFJpYWRpdGXEvnN0dm8gbWVkemluw6Fyb2Ruw71jaCBwbGF0aWViIGEg
cHJldm9kb3YgYSBwb3NreXRuw7rFpSBtdQpwb8W+YWRvdmFuw6kgaW5mb3Jtw6FjaWUgcyBuYXNs
ZWR1asO6Y2ltOgoKMS4gVmHFoWUgY2Vsw6kgbWVubyAobWVubyBhIHByaWV6dmlza28pCjIuIFZh
xaFhIMO6cGxuw6EgYWRyZXNhIGJ5ZGxpc2thIGEgdmHFoWEga3JhamluYQozLiBOw6Fyb2Rub3PF
pQo0LiBEw6F0dW0gbmFyb2RlbmlhIC8gcG9obGF2aWUKNS4gUG92b2xhbmllCjYuIFRlbGVmw7Nu
bmUgLyBmYXhvdsOpIMSNw61zbG8KNy4gRS1tYWlsb3bDoSBhZHJlc2EgdmHFoWVqIHNwb2xvxI1u
b3N0aSAvIE9zb2Juw6EgZS1tYWlsb3bDoSBhZHJlc2EuCgpQb3XFvml0ZSB0ZW50byBrw7NkIChS
ZWY6IENMSUVOVEUtOTY2LzE2KSBha28gcHJlZG1ldCBzdm9qaG8gZS1tYWlsdSBuYQppZGVudGlm
aWvDoWNpdSBhIHBva8O6c3RlIHNhIHBvc2t5dG7DusWlIHZ5xaHFoWllIHV2ZWRlbsOpIGluZm9y
bcOhY2llCnByYWNvdm7DrWtvbSB1dmVkZW7DvW0gbmnFvsWhaWUgbmEgdnlkYW5pZSBhIGRvcnXE
jWVuaWUgdmHFoWVqIGthcnR5IFZpc2EKQVRNOwoKQmFua292w6ltdSBhZ2VudG92aSBzbWUgb2Rw
b3J1xI1pbGksIGFieSBzaSBvdHZvcmlsIHPDumtyb21uw7ogZS1tYWlsb3bDugphZHJlc3UgcyBu
b3bDvW0gxI3DrXNsb20sIGt0b3LDqSBuw6FtIHVtb8W+bsOtIGtvbnRyb2xvdmHFpSB0w7p0byBw
bGF0YnUgYQprb211bmlrw6FjaXUgcyBwcmV2b2RvbSwgYWJ5IHNtZSBzYSB2eWhsaSDEj2FsxaHD
rW0gb25lc2tvcmVuaWFtIGFsZWJvCnByZXNtZXJvdmFuaXUgdsOhxaFobyBmb25kdS4gUHJvc8Ot
bSwga29udGFrdHVqdGUgc3ZvamhvIGFnZW50YSBVbml0ZWQKQmFuayBmb3IgQWZyaWNhIHMgbmFz
bGVkdWrDumNpbWkga29udGFrdG7DvW1pIMO6ZGFqbWk6CgpLb250YWt0OsKgTVIuIEtFTk5FRFkg
VVpPS0EKT2RkZWxlbmllIHByZXZvZHUga29tcGVuemHEjW7DvWNoIHByb3N0cmllZGtvdiAoVW5p
dGVkIEJhbmsgZm9yIEFmcmljYSkKS29udGFrdG7DvSBlLW1haWw6IChpbmZvZ3JvdXAudWJhYmFu
ay50Zy5uZXRAZ21haWwuY29tKQpBYnkgc21lIHByZWRpxaFsaSDEj2FsxaHDrW0gb25lc2tvcmVu
aWFtLCB2ecW+YWR1amVtZSB2YcWhdSBuYWxpZWhhdsO6Cm9kcG92ZcSPIG5hIHRlbnRvIGUtbWFp
bCwgYWtvIGplIHV2ZWRlbsOpLgoKUyBwb3pkcmF2b20KcGFuaSBLcmlzdGFsaW5hCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
