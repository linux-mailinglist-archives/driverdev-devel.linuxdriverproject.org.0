Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1974961B4
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jan 2022 16:06:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69F5983E9D;
	Fri, 21 Jan 2022 15:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id btqIlUc3gJQR; Fri, 21 Jan 2022 15:06:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DFEF83E9E;
	Fri, 21 Jan 2022 15:06:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE3861BF423
 for <devel@linuxdriverproject.org>; Fri, 21 Jan 2022 15:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D98DC83E9B
 for <devel@linuxdriverproject.org>; Fri, 21 Jan 2022 15:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aoKhS15PrOOl for <devel@linuxdriverproject.org>;
 Fri, 21 Jan 2022 15:06:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 268F983E94
 for <devel@driverdev.osuosl.org>; Fri, 21 Jan 2022 15:06:26 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id t14so592623ljh.8
 for <devel@driverdev.osuosl.org>; Fri, 21 Jan 2022 07:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=NielZ/sXHZLg5xzzGUS00SJ/p3+/+2YSxQlvNhk3jFE=;
 b=GCf3nuPD6hOhVnNfWEf4Pg5mGEBN2/moehyIHqlTBy2nwIArbyN7zNN4RAsbbF8cAz
 dwW+zU7xCW/sD6Ibc3nDnCaqk4tiW0g9dYBwS08rHPv97tgeJfCaypW2DPF1cMEuA4ti
 D3IHxlu0gQgvp6YAnFglBW+Oebv99YsiUfZcQLR543i6y1z3qu9U6HqakirsR3dQTrNy
 CYrkm7slRRhpTOEtAyaOsQTl+D4Mbpy4TIAxThYVNjZF6zFhcQocwf5Lc/ZejPLmRl4Y
 4ZYltdWiq1pUo5Ux1nOgs1arkpuZO8rIxb+LDUzBRxdXFdolhivM86i0rgLiV6MR0r6R
 +tsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=NielZ/sXHZLg5xzzGUS00SJ/p3+/+2YSxQlvNhk3jFE=;
 b=MDJw5/pn1IBtgCTKKZ29J+e0+ByfFkp+6oXrhpgs3elMa3qHNBYM0rqy2nipiAKVa6
 uSKVp8rNTqpJr1wNwMJuvPWoS+B9vMQxYQB8KxlIVyZrVW97Pu02yWRKxo15yZrGX4ga
 n1sWbrLm9gbixuNNVUTI+j9YMnphVGfDUz1veSe+b/SQuep3QAozmTWclpwsQ8P6CbvP
 SKyYIeWYa5rs5K0OGRKMlx+EA0vGVWU03OMtggE9IXPThYkppvgEE5AlSOmWhEFun3y3
 LHGOqvyYLO8qxe97u89JkSL+nHHUMyGKtWphUwgBIt6YtvFjTyHg2cTr6dEtx3F9Nr/L
 nZmg==
X-Gm-Message-State: AOAM533F4EZ04PG+t+sCPEpQ2oNWFTRfBcplWqwl8b1aaEJF/bBie4Gj
 OIfYsCEmd8SOaEm7Umv0F7UlwMdr2+jXFAqdj80=
X-Google-Smtp-Source: ABdhPJzE94V1eiVdEaq5nGq6CwKCEQSkV1it9AWOUWD2aakZDElDkeRANStQdyyOiudZdhDf/YcCQ4DX9y36tcy1fk0=
X-Received: by 2002:a2e:7f10:: with SMTP id a16mr3440175ljd.397.1642777583497; 
 Fri, 21 Jan 2022 07:06:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a2e:8756:0:0:0:0:0 with HTTP; Fri, 21 Jan 2022 07:06:22
 -0800 (PST)
From: Ingram Olivia <oliviaingra@gmail.com>
Date: Fri, 21 Jan 2022 15:06:22 +0000
X-Google-Sender-Auth: GuROndulPfSKC-IePxuJ5hhSOkw
Message-ID: <CAGU6fqGs=SuY9OuJ+wQR7VgX1-PTMBoyQbHarSziZ_L2tJB3bQ@mail.gmail.com>
Subject: I need your prompt response
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
Reply-To: oliviaingra343@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gRGVhciBJIGFtIE1ycy4gSW5ncmFtIE9saXZpYSwgSSBoYXZlIGRlY2lkZWQgdG8gZG9u
YXRlIHdoYXQgSQpoYXZlIHRvICBNb3RoZXJsZXNzIGJhYmllcy8gTGVzcyBwcml2aWxlZ2VkLyBX
aWRvd3MnIGJlY2F1c2UgSSBhbQpkeWluZyBhbmQgZGlhZ25vc2VkIGZvciBjYW5jZXIgZm9yIGFi
b3V0IDEwIHllYXJzIGFnby4gSSBoYXZlIGJlZW4KdG91Y2hlZCBieSBHb2QgQWxtaWdodHkgdG8g
ZG9uYXRlIGZyb20gd2hhdCBJIGhhdmUgaW5oZXJpdGVkIGZyb20gbXkKbGF0ZSBodXNiYW5kIHRv
IHlvdSBmb3IgZ29vZCB3b3JrIG9mIEdvZCBBbG1pZ2h0eS4gSSBoYXZlIGFza2VkCkFsbWlnaHR5
IEdvZCB0byBmb3JnaXZlIG1lIGFuZCBiZWxpZXZlIGhlIGhhcywgYmVjYXVzZSBoZSBpcyBhCk1l
cmNpZnVsIEdvZCwgSSdtIHByZXNlbnRseSBzdWZmZXJpbmcgZnJvbSBMZXVrZW1pYS4KCk15IGhl
YWx0aCBjb25kaXRpb24gaGFzIGdvdHRlbiB3b3JzZSBhbmQganVzdCB0d28gd2Vla3MgYWdvIG15
IGRvY3RvcgppbmZvcm1lZCBtZSB0aGF0IG15IGNvbmRpdGlvbiBoYXMgcmVhY2ggYSBjcml0aWNh
bCBzdGFnZSwgdGhhdCBJIGhhdmUKanVzdCA1IG1vbnRocyBsZWZ0LiBUaGlzIGNvbmZpcm1hdGlv
biBmcm9tIG15IGRvY3RvciB3YXMgYW5kIHN0aWxsIGlzCmRldmFzdGF0aW5nIG5ld3M7IGl0IGlz
IGhhcmQgdG8ga25vdyB0aGF0IHlvdSBoYXZlIGp1c3QgYSBsaXR0bGUgdGltZQpsZWZ0IHRvIGxp
dmUgaGVyZS4KCkFmdGVyIHRoZSBkb2N0b3LigJlzIG1lZGljYWwgcHJvbnVuY2lhdGlvbiB0aGF0
IEkgaGF2ZSBqdXN0IGZldyBtb250aHMKdG8gbGl2ZSwgSSBkZWNpZGVkIHRvIGRpdmlkZSBteSB3
ZWFsdGggdG8gY29udHJpYnV0ZSB0byB5b3VyIGNvdW50cnkuCkkgd2FudCB0byBhc3Npc3QgeW91
IHdpdGggdGhlIGZ1bmRzIHRvIGRvIGdyZWF0IGNoYXJpdHkgd29ya3MgaW4geW91cgpjb3VudHJ5
LCB0aGlzIGlzIG15IGxhc3Qgd2lzaC4gSSBzZWxlY3RlZCB5b3UgYWZ0ZXIgc2VhcmNoaW5nIGZl
dwp3ZWJzaXRlczsgSSBwcmF5ZWQgYW5kIHdhcyBsZWQgdG8geW91LiBJIGFtIHdpbGxpbmcgdG8g
ZG9uYXRlIHRoZSBzdW0Kb2YgKCQ4LjFtaWxsaW9uICkgdG8gdGhlIGxlc3MgcHJpdmlsZWdlZCB0
aHJvdWdoIHlvdS4KClBsZWFzZSBJIHdhbnQgdG8gdHJhbnNmZXIgdGhpcyBtb25leSB0byB5b3Us
IElmIHlvdSBjYW4gaGFuZGxlIHRoaXMKZnVuZCBhbmQgdmVyeSBzdXJlIHRvIGRvIGNoYXJpdHkg
d29ya3Mgb24gbXkgYmVoYWxmIGFuZCBmcm9tIHRoZXJlIEkKd2lsbCB0cmF2ZWwgdG8gbWVldCBh
IHNwZWNpYWxpc3QgYXMgSSB3YW50IHRvIGJlIGJ1cmllZCBhbG9uZ3NpZGUgbXkKbGF0ZSBodXNi
YW5kIHdoZW4gSSBwYXNzZWQgb24uCgpOb3RlIHRoYXQgdGhpcyBmdW5kIGlzIGluIHRoZSBmaW5h
bmNpYWwgaW5zdGl0dXRpb24gYW5kIHVwb24gbXkKaW5zdHJ1Y3Rpb247IEkgd2lsbCBmaWxlIGlu
IGFuIGFwcGxpY2F0aW9uIGZvciB0aGUgdHJhbnNmZXIgb2YgdGhlCm1vbmV5IGludG8geW91ciBh
Y2NvdW50IGZvciB0aGUgc2FpZCBwdXJwb3NlLgoKTGFzdGx5LCBJIGhvbmVzdGx5IHByYXkgdGhh
dCB0aGlzIG1vbmV5IHdoZW4gdHJhbnNmZXJyZWQgd2lsbCBiZSB1c2VkCmZvciB0aGUgc2FpZCBw
dXJwb3NlIGV2ZW4gdGhvdWdoIEkgbWlnaHQgYmUgbGF0ZSB0aGVuLiBJIGhhdmUgY29tZSB0bwpm
aW5kIG91dCB0aGF0IHdlYWx0aCBpcyB2YW5pdHkgYW5kIEkgbWFkZSBhIHByb21pc2UgdG8gR29k
IHRoYXQgbXkKd2VhbHRoIHdpbGwgYmUgdXNlZCB0byBzdXBwb3J0IHRoZSBwb29yIGFuZCB0aGUg
YXNzaXN0IHRoZSBzaWNrLiBEbwpsZXQgbWUga25vdwoKaWYgeW91IHdpbGwgYmUgYWJsZSB0byBo
YW5kbGUgdGhpcyBmdW5kIGFuZCB1c2UgaXQgZm9yIHRoZSBzYWlkCnB1cnBvc2Ugc28gdGhhdCBJ
IHdpbGwgaW5mb3JtIG15IGJhbmsgb24gbXkgZGVjaXNpb24sIElmIHlvdSBhcmUKaW50ZXJlc3Rl
ZCBpbiBjYXJyeWluZyBvdXQgdGhpcyB0YXNrLCBnZXQgYmFjayB0byBtZSBmb3IgbW9yZSBkZXRh
aWxzCm9uIHRoaXMgbm9ibGUgcHJvamVjdCBvZiBtaW5lLgoxOiBGdWxsIG5hbWU6CjI6IENvdW50
cnk6CjM6T2NjdXBhdGlvbi9wb3NpdGlvbjoKNDpQaG9uZS9zOgo1OiBBZ2U6CjY6IFNleDoKNzog
QWRkcmVzczoKSSBhbSB3YWl0aW5nIHNvb25lc3QgdG8gaGVhciBmcm9tIHlvdSByZXBseSB2aWEg
OiBvbGl2aWFpbmdyYTM0M0BnbWFpbC5jb20KR29kIGJsZXNzIHlvdQpNcnMuSW5ncmFtIE9saXZp
YQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
