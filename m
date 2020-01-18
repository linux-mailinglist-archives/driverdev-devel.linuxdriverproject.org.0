Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 052D71417A5
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jan 2020 14:31:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 011332262E;
	Sat, 18 Jan 2020 13:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3wyqBgCM1tXK; Sat, 18 Jan 2020 13:31:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 69195203D7;
	Sat, 18 Jan 2020 13:31:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 015DD1BF681
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 13:31:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ED46A87F44
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 13:31:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fGEOOZXpCHtt for <devel@linuxdriverproject.org>;
 Sat, 18 Jan 2020 13:31:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0B39287DD4
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 13:31:26 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id v25so24059742qto.7
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 05:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=5YxsjwffX9TUC1iOdqN5ynD4NWa9IcR8dkHqJbAF8kc=;
 b=igvr2dE4tFGDDSG9IfuJJTa+LQ6gBHOYZVtwcTa1EVk2pXDWghwaMukEFiuBAsiJxC
 awiw39lFSOUZugA6CZd72hN2o1zIYLC6BP2HqZeB0WvUgnIbqvZjVPDc5lRUPxFR0N9o
 1R9SczDarkvhm5iC0ZJu4CN1nCCrDClmOmzr8+4oNVX8V8KM0h1PVVeDVl0n1lZ0yqJP
 GRqCHLHhufl3/HN2f38fJ+f5dAOxoctwm7/E5cMuAwb9k2dOGLdNhtBPr59UvvHtGtVf
 lRV+lxcSBNf4Sp85dAT04HnH8At+8I7m1Bihm0R0aq6esLfZhlBnI2hQwfoEdsk66OQa
 wBbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=5YxsjwffX9TUC1iOdqN5ynD4NWa9IcR8dkHqJbAF8kc=;
 b=PQGBe/fIz1Vgxiez41xCf9F3IN6H1oiiBlEtNbOi5Eu1Pzvc2DQ1cMdcjE8Jfp3T9n
 9t4f29r2lHLh5njtDAwyW45pc2qWMYa89sTtq/JpRK5ATuMen0yCMaVUvfDpssf1BhWP
 D/DiktiCnhzn4pEu3aeABrVUgE0WZ3Sazh1cfzpiWCKHwHpfHEZY23EPE5KOICI2cehn
 4RO4FY/DIiws0IoJV8ud2MvBWwX8qyl6v9/cl3NzKvqTyFXMm+AlG/LHjj1It76c87D0
 u1PAgsR5l3XI1pis/oEH5Nccijn+COm8QbPphJwMB2k21uSHyaERgxati/z5bJiFWSRC
 +z0g==
X-Gm-Message-State: APjAAAVhtKNuGKBocOdM4gkvVl2JAfoUzMoPASEb6zUU/T5uNgLqoWm3
 N1ltPv4JC99g8qbAPzigy/o+AA==
X-Google-Smtp-Source: APXvYqyvWy2BCgLFuugmUzP2XR9m0gX8NeEj+EG8BQTvuGNbWU/DVrIHfL8tymbnGFBbc6yADiKuiQ==
X-Received: by 2002:ac8:31f0:: with SMTP id i45mr12324308qte.327.1579354285798; 
 Sat, 18 Jan 2020 05:31:25 -0800 (PST)
Received: from nicolas-tpx395 ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id e3sm14434223qtj.30.2020.01.18.05.31.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2020 05:31:25 -0800 (PST)
Message-ID: <8b10414a1c198a6e3bd5e131a72bd6f68466bea5.camel@ndufresne.ca>
Subject: Re: [PATCH] media: hantro: Support H264 profile control
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hans Verkuil <hverkuil@xs4all.nl>, Tomasz Figa <tfiga@chromium.org>
Date: Sat, 18 Jan 2020 08:31:22 -0500
In-Reply-To: <c88b2822-0dd2-8ea3-eb0b-262df5a30830@xs4all.nl>
References: <20191122051608.128717-1-hiroh@chromium.org>
 <767528be59275265072896e5c679e97575615fdd.camel@ndufresne.ca>
 <CAAFQd5D3OpAAtX7_0ktz4-aAgWN_G4YBQMR=Vwp7JPopjvRkRA@mail.gmail.com>
 <f5341ed837529bd38d466d4b655e261d64065912.camel@ndufresne.ca>
 <CAAFQd5Cpk8qG+VgE6+aznBmXu11YG0gNQyCRanZghds-TPKvyg@mail.gmail.com>
 <c88b2822-0dd2-8ea3-eb0b-262df5a30830@xs4all.nl>
User-Agent: Evolution 3.34.3 (3.34.3-1.fc31) 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hirokazu Honda <hiroh@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGUgdmVuZHJlZGkgMTAgamFudmllciAyMDIwIMOgIDEzOjMxICswMTAwLCBIYW5zIFZlcmt1aWwg
YSDDqWNyaXQgOgo+IE9uIDExLzI5LzE5IDE6MTYgQU0sIFRvbWFzeiBGaWdhIHdyb3RlOgo+ID4g
T24gU2F0LCBOb3YgMjMsIDIwMTkgYXQgMTo1MiBBTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFz
QG5kdWZyZXNuZS5jYT4KPiA+IHdyb3RlOgo+ID4gPiBMZSBzYW1lZGkgMjMgbm92ZW1icmUgMjAx
OSDDoCAwMTowMCArMDkwMCwgVG9tYXN6IEZpZ2EgYSDDqWNyaXQgOgo+ID4gPiA+IE9uIFNhdCwg
Tm92IDIzLCAyMDE5IGF0IDEyOjA5IEFNIE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJl
c25lLmNhPgo+ID4gPiA+IHdyb3RlOgo+ID4gPiA+ID4gTGUgdmVuZHJlZGkgMjIgbm92ZW1icmUg
MjAxOSDDoCAxNDoxNiArMDkwMCwgSGlyb2thenUgSG9uZGEgYSDDqWNyaXQgOgo+ID4gPiA+ID4g
PiBUaGUgSGFudHJvIEcxIGRlY29kZXIgc3VwcG9ydHMgSC4yNjQgcHJvZmlsZXMgZnJvbSBCYXNl
bGluZSB0byBIaWdoLAo+ID4gPiA+ID4gPiB3aXRoCj4gPiA+ID4gPiA+IHRoZSBleGNlcHRpb24g
b2YgdGhlIEV4dGVuZGVkIHByb2ZpbGUuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBFeHBvc2Ug
dGhlIFY0TDJfQ0lEX01QRUdfVklERU9fSDI2NF9QUk9GSUxFIGNvbnRyb2wsIHNvIHRoYXQgdGhl
Cj4gPiA+ID4gPiA+IGFwcGxpY2F0aW9ucyBjYW4gcXVlcnkgdGhlIGRyaXZlciBmb3IgdGhlIGxp
c3Qgb2Ygc3VwcG9ydGVkCj4gPiA+ID4gPiA+IHByb2ZpbGVzLgo+ID4gPiA+ID4gCj4gPiA+ID4g
PiBUaGFua3MgZm9yIHRoaXMgcGF0Y2guIERvIHlvdSB0aGluayB3ZSBjb3VsZCBhbHNvIGFkZCB0
aGUgTEVWRUwKPiA+ID4gPiA+IGNvbnRyb2wKPiA+ID4gPiA+IHNvIHRoZSBwcm9maWxlL2xldmVs
IGVudW1lcmF0aW9uIGJlY29tZXMgY29tcGxldGUgPwo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJJ20g
dGhpbmtpbmcgaXQgd291bGQgYmUgbmljZSBpZiB0aGUgdjRsMiBjb21wbGlhbmNlIHRlc3QgbWFr
ZSBzdXJlCj4gPiA+ID4gPiB0aGF0IGNvZGVjcyBkbyBpbXBsZW1lbnQgdGhlc2UgY29udHJvbHMg
KGJvdGggc3RhdGVmdWwgYW5kIHN0YXRlbGVzcyksCj4gPiA+ID4gPiBpdCdzIGVzc2VudGlhbCBm
b3Igc3RhY2sgd2l0aCBzb2Z0d2FyZSBmYWxsYmFjaywgb3IgbXVsdGlwbGUgY2FwYWJsZQo+ID4g
PiA+ID4gY29kZWMgaGFyZHdhcmUgYnV0IHdpdGggZGlmZmVyZW50IGNhcGFiaWxpdGllcy4KPiA+
ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IExldmVsIGlzIGEgZGlmZmljdWx0IHN0b3J5LCBiZWNh
dXNlIGl0IGFsc28gc3BlY2lmaWVzIHRoZSBudW1iZXIgb2YKPiA+ID4gPiBtYWNyb2Jsb2NrcyBw
ZXIgc2Vjb25kLCBidXQgZm9yIGRlY29kZXJzIGxpa2UgdGhpcyB0aGUgbnVtYmVyIG9mCj4gPiA+
ID4gbWFjcm9ibG9ja3MgcGVyIHNlY29uZCBpdCBjYW4gaGFuZGxlIGRlcGVuZHMgb24gdGhpbmdz
IHRoZSBkcml2ZXIKPiA+ID4gPiBtaWdodCBiZSBub3QgYXdhcmUgb2YgLSBjbG9jayBmcmVxdWVu
Y2llcywgRERSIHRocm91Z2hwdXQsIHN5c3RlbQo+ID4gPiA+IGxvYWQsIGV0Yy4KPiA+ID4gPiAK
PiA+ID4gPiBNeSB0YWtlIG9uIHRoaXMgaXMgdGhhdCB0aGUgZGVjb2RlciBkcml2ZXIgc2hvdWxk
IGFkdmVydGlzZSB0aGUKPiA+ID4gPiBoaWdoZXN0IHJlc29sdXRpb24gdGhlIGRlY29kZXIgY2Fu
IGhhbmRsZSBkdWUgdG8gaGFyZHdhcmUgY29uc3RyYWludHMuCj4gPiA+ID4gUGVyZm9ybWFuY2Ug
cmVsYXRlZCB0aGluZ3MgZGVwZW5kIG9uIHRoZSBpbnRlZ3JhdGlvbiBkZXRhaWxzIGFuZAo+ID4g
PiA+IHNob3VsZCBiZSBtYW5hZ2VkIGVsc2V3aGVyZS4gRm9yIGV4YW1wbGUgQW5kcm9pZCBhbmQg
Q2hyb21lIE9TIG1hbmFnZQo+ID4gPiA+IGV4cGVjdGVkIGRlY29kaW5nIHBlcmZvcm1hbmNlIGlu
IHBlci1ib2FyZCBjb25maWd1cmF0aW9uIGZpbGVzLgo+ID4gPiAKPiA+ID4gV2hlbiB5b3UgcmVh
ZCBkYXRhc2hlZXQsIHRoZSBIVyBpcyBhbHdheXMgcmF0ZWQgdG8gbWF4aW11bSBsZXZlbCAoYW5k
Cj4gPiA+IGl0J3MgYSByYW5nZSkgd2l0aCB0aGUgYXNzdW1wdGlvbiBvZiBhIHNpbmdsZSBzdHJl
YW0uIEl0IHNlZW1zIG11Y2gKPiA+ID4gZWFzaWVyIHRvIGV4cG9zZSB0aGlzIGFzLWlzLCBzdGF0
aWNhbGx5IHRoZW4gdG8gc3RhcnQgZG9pbmcgc29tZSBtYXRoCj4gPiA+IHdpdGggZGF0YSB0aGF0
IGlzbid0IGZ1bGx5IGV4cG9zZWQgdG8gdGhlIHVzZXIuIFRoaXMgaXMgYWJvdXQgZmlsdGVyaW5n
Cj4gPiA+IG9mIG11bHRpcGxlIENPREVDIGluc3RhbmNlcywgaXQgZG9lcyBub3QgbmVlZCB0byBi
ZSByb2NrZXQgc2NpZW5jZSwKPiA+ID4gc3BlY2lhbGx5IHRoYXQgdGhlIGFtb3VudCBvZiBtaXNz
aW5nIGRhdGEgaXMgaW1wb3J0YW50IChlLmcuIHVzYWdlIG9mCj4gPiA+IHRpbGVzLCBjb21wcmVz
c2lvbiwgSVBQIGFsbCBoYXZlIGFuIGltcGFjdCBvbiB0aGUgZmluYWwgcGVyZm9ybWFuY2UpLgo+
ID4gPiBBbGwgd2Ugd2FudCB0byBrbm93IGluIHVzZXJzcGFjZSBpcyBpZiB0aGlzIEhXIGlzIGV2
ZW4gcG9zc2libHkgY2FwYWJsZQo+ID4gPiBvZiBMRVZFTCBYLCBhbmQgaWYgbm90LCB3ZSdsbCBs
b29rIGZvciBhbm90aGVyIG9uZS4KPiA+ID4gCj4gPiAKPiA+IEFncmVlZCwgb25lIGNvdWxkIHBv
dGVudGlhbGx5IGRlZmluZSBpdCB0aGlzIHdheSwgYnV0IHdvdWxkIGl0IGJlCj4gPiByZWFsbHkg
dXNlZnVsIGZvciB0aGUgdXNlcnNwYWNlIGFuZCB0aGUgdXNlcnM/IEkgZ3Vlc3MgaXQgY291bGQg
ZW5hYmxlCj4gPiBzbGlnaHRseSBmYXN0ZXIgZmFsbGJhY2sgdG8gc29mdHdhcmUgZGVjb2Rpbmcg
aW4gdGhlIGV4dHJlbWUgY2FzZSBvZgo+ID4gdGhlIGhhcmR3YXJlIG5vdCBzdXBwb3J0aW5nIHRo
ZSBsZXZlbCBhdCBhbGwsIGJ1dCBJIHN1c3BlY3QgdGhhdCB0aGUKPiA+IG1ham9yaXR5IG9mIGNh
c2VzIHdvdWxkIGJlIHRoZSBoYXJkd2FyZSBqdXN0IGJlaW5nIHVudXNhYmx5IHNsb3cuCj4gPiAK
PiA+IEFsc28sIGFzIEkgbWVudGlvbmVkIGJlZm9yZSwgd2UgYWxyZWFkeSByZXR1cm4gdGhlIHJh
bmdlIG9mIHN1cHBvcnRlZAo+ID4gcmVzb2x1dGlvbnMsIHdoaWNoIGluIHByYWN0aWNlIHNob3Vs
ZCBtYXAgdG8gdGhlIHBhcnQgb2YgdGhlIGxldmVsCj4gPiB0aGF0IG1heSBkZXBlbmQgb24gaGFy
ZHdhcmUgY2FwYWJpbGl0aWVzIHJhdGhlciB0aGFuIHBlcmZvcm1hbmNlLCBzbwo+ID4gZXhwb3Np
bmcgbGV2ZWxzIGFzIHdlbGwgd291bGQgYWRkIHJlZHVuZGFuY3kgdG8gdGhlIGluZm9ybWF0aW9u
Cj4gPiBleHBvc2VkLgo+IAo+IFRoZXJlIGlzIGEgbG90IG9mIGRpc2N1c3Npb24gaGVyZSwgYnV0
IGl0IGFsbCByZXZvbHZlcyBhcm91bmQgYSBwb3RlbnRpYWwKPiBMRVZFTCBjb250cm9sLgo+IAo+
IFNvIEkgZ2F0aGVyIGV2ZXJ5b25lIGlzIE9LIHdpdGggbWVyZ2luZyB0aGlzIHBhdGNoPwoKSSdt
IG9rIHdpdGggdGhpcy4gRm9yIG1lLCB0aGUgbGV2ZWwgcmVmbGVjdHMgdGhlIHJlYWwgdGltZSBw
ZXJmb3JtYW5jZQpjYXBhYmlsaXR5IGFzIGRlZmluZSBpbiB0aGUgc3BlYywgd2hpbGUgdGhlIHdp
ZHRoL2hlaWdodCBjb25zdHJhaW50cyB1c3VhbGx5CnJlcHJlc2VudCBhbiBhZGRyZXNzaW5nIGNh
cGFiaWNpdHksIHdoaWNoIG1heSBvciBtYXkgbm90IG9wZXJhdGUgcmVhbC10aW1lLgoKPiAKPiBJ
ZiBub3QsIGxldCBtZSBrbm93IGFzYXAuCj4gCj4gUmVnYXJkcywKPiAKPiAJSGFucwo+IAo+ID4g
PiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBIaXJva2F6dSBIb25kYSA8aGlyb2hAY2hyb21pdW0ub3Jn
Pgo+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50
cm8vaGFudHJvX2Rydi5jIHwgMTAgKysrKysrKysrKwo+ID4gPiA+ID4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDEwIGluc2VydGlvbnMoKykKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gPiA+ID4gPiBi
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiA+ID4gPiA+IGlu
ZGV4IDZkOWQ0MTE3MDgzMi4uOTM4NzYxOTIzNWQ4IDEwMDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gPiA+ID4gPiArKysg
Yi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gPiA+ID4gPiBA
QCAtMzU1LDYgKzM1NSwxNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19jdHJsIGNvbnRy
b2xzW10gPSB7Cj4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAuZGVmID0KPiA+ID4g
PiA+ID4gVjRMMl9NUEVHX1ZJREVPX0gyNjRfU1RBUlRfQ09ERV9BTk5FWF9CLAo+ID4gPiA+ID4g
PiAgICAgICAgICAgICAgICAgICAgICAgLm1heCA9Cj4gPiA+ID4gPiA+IFY0TDJfTVBFR19WSURF
T19IMjY0X1NUQVJUX0NPREVfQU5ORVhfQiwKPiA+ID4gPiA+ID4gICAgICAgICAgICAgICB9LAo+
ID4gPiA+ID4gPiArICAgICB9LCB7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgLmNvZGVjID0g
SEFOVFJPX0gyNjRfREVDT0RFUiwKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAuY2ZnID0gewo+
ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgLmlkID0gVjRMMl9DSURfTVBFR19WSURF
T19IMjY0X1BST0ZJTEUsCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAubWluID0g
VjRMMl9NUEVHX1ZJREVPX0gyNjRfUFJPRklMRV9CQVNFTElORSwKPiA+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIC5tYXggPSBWNEwyX01QRUdfVklERU9fSDI2NF9QUk9GSUxFX0hJR0gs
Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAubWVudV9za2lwX21hc2sgPQo+ID4g
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgQklUKFY0TDJfTVBFR19WSURFT19IMjY0X1BS
T0ZJTEVfRVhURU5ERUQpLAo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgLmRlZiA9
IFY0TDJfTVBFR19WSURFT19IMjY0X1BST0ZJTEVfTUFJTiwKPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICB9Cj4gPiA+ID4gPiA+ICAgICAgIH0sIHsKPiA+ID4gPiA+ID4gICAgICAgfSwKPiA+ID4g
PiA+ID4gIH07CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
