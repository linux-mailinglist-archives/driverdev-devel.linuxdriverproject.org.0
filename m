Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D94AC784
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Sep 2019 18:07:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7366687B81;
	Sat,  7 Sep 2019 16:07:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qKGmsSvBxd5z; Sat,  7 Sep 2019 16:07:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8A30878C4;
	Sat,  7 Sep 2019 16:07:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BDA7D1BF5A4
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 16:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BA64286A48
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 16:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B-ElvjOVtK30
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 16:07:38 +0000 (UTC)
X-Greylist: delayed 00:06:06 by SQLgrey-1.7.6
Received: from mx.lockerman.unweaned.xyz (mx.lockerman.unweaned.xyz
 [157.245.173.221])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E7B4886A3C
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 16:07:38 +0000 (UTC)
Received: from mx.lockerman.unweaned.xyz (mx.lockerman.unweaned.xyz
 [127.0.0.1])
 by mx.lockerman.unweaned.xyz (Postfix) with ESMTP id 46QfLN1cPFz2281
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 16:01:32 +0000 (UTC)
Authentication-Results: mx.lockerman.unweaned.xyz (amavisd-new);
 dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
 header.d=lockerman.unweaned.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 lockerman.unweaned.xyz; h=content-transfer-encoding:content-type
 :content-type:mime-version:message-id:x-mailer:user-agent
 :reply-to:list-unsubscribe:subject:subject:to:from:from:date
 :date; s=dkim; t=1567872091; x=1570464092; bh=m+qSZiuacUUKkTyTPQ
 TIjnmWXLqGGVdiHEtAo2FOW/Q=; b=SZ32TsrxjXz4dsU4TR/tHIMg78OwulOVZ/
 cEIomC4rNjg70hP+CUQHFvjIRt3uEZ2Z6uUyZ2Z8kB1g0Eassn/NZUgVHam9Fgu9
 ALt3hWzXnAi20TKo8GG1gDdNkzH6AufDL24X0BsOcVrOEd0rDefkS6pbJIv7wg5O
 kb2eQ0Qd4=
X-Virus-Scanned: Debian amavisd-new at mx.lockerman.unweaned.xyz
Received: from mx.lockerman.unweaned.xyz ([127.0.0.1])
 by mx.lockerman.unweaned.xyz (mx.lockerman.unweaned.xyz [127.0.0.1])
 (amavisd-new, port 10024) with ESMTP id jW2ikPAz-Y7W
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 16:01:31 +0000 (UTC)
Received: from [127.0.0.1] (mx.lockerman.unweaned.xyz [127.0.0.1])
 by mx.lockerman.unweaned.xyz (Postfix) with ESMTP id 46QfL01hKzz222c
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 16:01:12 +0000 (UTC)
Date: Sat, 7 Sep 2019 17:01:11 +0100
From: =?UTF-8?Q?A=C5=89onymn=C3=AD=20H=CA=8Ccker?=
 <lina.38@lockerman.unweaned.xyz>
To: driverdev-devel@linuxdriverproject.org
Subject: =?UTF-8?Q?D=C5=AELE=C5=BDIT=C3=89!=20Byli=20jste=20nahr=C3=A1ni=20=CA=8D?=
 =?UTF-8?Q?asturbovat!=20M=C3=A1m=20Driverdev=20Devel.mp4!?=
User-Agent: CodeIgniter
X-Sender: lina.38@lockerman.unweaned.xyz
X-Mailer: CodeIgniter
X-Priority: 3 (Normal)
Message-ID: <5d73d4481662d@lockerman.unweaned.xyz>
Mime-Version: 1.0
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
Reply-To: lina.38@lockerman.unweaned.xyz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UFJPOiAgZHJpdmVyZGV2LWRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKCkFob2osCgpOYXBv
c2xlZHkganN0ZSBuYXbFoXTDrXZpbGkgx7dvcm5vIHN0csOhbmt5IHMgZG9zcMOtdmFqw61jw61t
aSwKc3TDoWhsaSBqc3RlIGEgbmFpbnN0YWxvdmFsaSBzb2Z0d2FyZSwga3RlcsO9IGpzZW0gdnl0
dm/FmWlsLgoKTcWvaiBwcm9ncmFtIHphcG51bCBmb3RvYXBhcsOhdCBhIHphem5hbWVuYWwgcHJv
Y2VzCnZhxaHDrSDKjWFzdHVyYmFjZS4KCk3Fr2ogc29mdHdhcmUgdGFrw6kgcG9wYWRsIHbFoWVj
aG55IHZhxaFlIGUtbWFpbG92w6kgc2V6bmFteQprb250YWt0xa8gYSBzZXpuYW0gdmHFoWljaCBw
xZnDoXRlbCBuYSBGYWNlYm9va3UuCgpNw6FtIC0gRHJpdmVyZGV2IERldmVsLm1wNCAtIHMgdsOh
bWkgyo1hc3R1cmJ1amUKbmEgdGVlbmFnZcWZaSwgc3Rlam7EmyBqYWtvIHNvdWJvciBzZSB2xaFl
bWkga29udGFrdHkgbmEKbcOpbSBwb8SNw610YcSNaS4KCkpzdGUgdmVsbWkgenZyaGzDrSEKCgpQ
b2t1ZCBjaGNldGUsIGFieWNoIG9kc3RyYW5pbCBvYmEgc291Ym9yeQphIHVjaG92YWwgdGFqZW1z
dHbDrSwgbXVzw610ZSBtaSBwb3NsYXQgcGxhdGJ1IEJpdGNvaW5lbS4KRMOhdsOhbSB2w6FtIDcy
IGhvZGluIG5hIHBsYXRidS4KClBva3VkIG5ldsOtdGUsIGphayBzIEJpdGNvaW5lbSBwbGF0aXQs
IG5hdsWhdGl2dGUKR29vZ2xlIGEgaGxlZGVqdGUuCgpQxZllbmVzdGUgNTAuMDAwIENaSyA9IDAu
MjA1MDM1MiBCVEMgbmEgdHV0bwphZHJlc3UgQml0Y29pbiBjbyBuZWpkxZnDrXZlOgoKM0o5b3ky
dW5ncW5naGJ5Qkw4RE43YmdWdmo3WGNXYnQ5Zgooa29ww61yb3bDoW7DrSBhIHZrbMOhZMOhbsOt
KQoKMSBCVEMgPSAyNDQuMDAwIENaSyBwcsOhdsSbIHRlxI8sIHRha8W+ZSBvZGXFoWxldGUgcMWZ
ZXNuxJsKMC4yMDUwMzUyIEJUQwpuYSB2w73FoWUgdXZlZGVub3UgYWRyZXN1LgoKCgpOZXNuYcW+
IHNlIG3EmyBwb2R2w6FkxJt0IQpKYWttaWxlIG90ZXbFmWV0ZSB0ZW50byBlLW1haWwsIGJ1ZHUg
dsSbZMSbdCwgxb5lIGpzdGUgamVqIG90ZXbFmWVsaS4KU2xlZHVqaSB2xaFlY2hueSBha2NlIHZl
IHZhxaFlbSB6YcWZw616ZW7DrS4KClRhdG8gYWRyZXNhIEJpdGNvaW51IGplIHByb3BvamVuYSBw
b3V6ZSBzIHbDoW1pLAp0YWvFvmUgYnVkdSB2xJtkxJt0LCBrZHkgb2RlxaFsZXRlIHNwcsOhdm5v
dSDEjcOhc3RrdS4KS2R5xb4gemFwbGF0w610ZSB2IHBsbsOpIHbDvcWhaSwgb2RzdHJhbsOtbSBv
YmEKc291Ym9yeSBhIGRlYWt0aXZ1amkgcHJvZ3JhbS4KClBva3VkIHBsYXRidSBuZXBvc8OtbMOh
dGUsIHBvxaFsdSB2YcWhZSDKjWFzdHVyYmHEjW7DrQp2zq9kZW8gdsWhZW0gdmHFoWltIHDFmcOh
dGVsxa9tIGEgc3BvbHVwcmFjb3Zuw61rxa9tCnogdmHFoWljaCBrb250YWt0bsOtY2ggc2V6bmFt
xa8sIGt0ZXLDqSBqc2VtIG5hcGFkbC4KClpkZSBqc291IG9wxJt0IHBsYXRlYm7DrSDDumRhamU6
CgoKKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKT2Rlc2xh
dCA1MC4wMDAgQ1pLOgoKMC4yMDUwMzUyIEJUQwoKayB0w6l0byBhZHJlc2UgQml0Y29pbjoKCjNK
OW95MnVuZ3FuZ2hieUJMOERON2JnVnZqN1hjV2J0OWYKCihrb3DDrXJvdsOhbsOtIGEgdmtsw6Fk
w6Fuw60pCioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCgoK
TcWvxb5ldGUgbmF2xaF0w612aXQgcG9saWNpaSwgYWxlIG5pa2RvIHbDoW0gbmVtxa/FvmUgcG9t
b2NpLgpWw61tLCBjbyBkxJtsw6FtLgpOZcW+aWppIHZlIHZhxaHDrSB6ZW1pIGEgdsOtbSwgamFr
IHrFr3N0YXQgYW5vbnltbsOtLgoKTmVzbmHFvnRlIHNlIG3EmyBva2xhbWF0IC0gb2thbcW+aXTE
myB0byBidWR1CnbEm2TEm3QgLSBtxa9qIMWhcGlvbsOhxb5uw60gc29mdHdhcmUgbmFocsOhdsOh
IHbFoWVjaG55IG5hdsWhdMOtdmVuw6kKd2Vib3bDqSBzdHLDoW5reSBhIHbFoWVjaG55IGtsw6F2
ZXN5LCBrdGVyw6kgc3Rpc2tuZXRlLgpQb2t1ZCBhbm8gLSBwb8WhbHUgdGVudG8gb8Wha2xpdsO9
IHrDoXpuYW0gdsWhZW0sCmtvaG8gem7DoXRlLCB2xI1ldG7EmyB2YcWhw60gcm9kaW55LgoKCk5l
cG9kdsOhZMSbaiBtxJshIE5lemFwb21lxYh0ZSBuYSBoYW5idSBhIHBva3VkCnR1dG8genByw6F2
dSBpZ25vcnVqZXRlLCB2w6HFoSDFvml2b3QgYnVkZSB6bmnEjWVuLgoKxIxla8OhbSBuYSB2YcWh
aSBwbGF0YnUgQml0Y29pbmVtLgpaYsO9dsOhIHbDoW0gNzIgaG9kaW4uCgoKQcWJb255bW7DrSBI
yoxja2VyCgpQLlMuIFBva3VkIHBvdMWZZWJ1amV0ZSB2w61jZSDEjWFzdSBuYSBuw6FrdXAgYSBv
ZGVzbMOhbsOtIEJUQywKb3RldsWZZXRlIHN2xa9qIHBvem7DoW1rb3bDvSBibG9rIGEgbmFwacWh
dGUgLSA0OEggKysgLSBhIHVsb8W+dGUuClTDrW10byB6cMWvc29iZW0gbcSbIG3Fr8W+ZXRlIGtv
bnRha3RvdmF0LgpVdmHFvnVqaSBvIHRvbSwgxb5lIHbDoW0gamXFoXTEmyA0OCBob2RpbiBwxZll
ZCBvZGVzbMOhbsOtbSB2zq9kZWEKdmHFoWltIGtvbnRha3TFr20sIGFsZSBwb3V6ZSB0ZWhkeSwg
a2R5xb4gds6vZMOtbSwKxb5lIHNlIG9wcmF2ZHUgc25hxb7DrXRlIGtvdXBpdCBiaXRjb2luLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
