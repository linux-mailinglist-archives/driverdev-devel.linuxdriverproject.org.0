Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2770916BD6
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 22:02:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BBA8286BC9;
	Tue,  7 May 2019 20:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aVXBkq1DGovQ; Tue,  7 May 2019 20:02:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9054385B58;
	Tue,  7 May 2019 20:02:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CEAF1BF863
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 20:02:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6A0842E379
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 20:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CFcI9LjKGQuE for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 20:02:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id AFD2A2156F
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 20:02:11 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id v11so3867041wru.5
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 13:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Gb9u8BwK6K2VHZrF75n3DXs/h9sjtM0WB9yfdMMjAhA=;
 b=eohhKp0uJ59T4vEbRM8AblhUOv5qTWeRAMn2c9ZZJbtbBZV39LMSdRmpjRZV012Tjk
 aQlKi86yUbKUQXNoAdPT7NP58zePSKmLAzMBVVPMJYSFAUVsRkBAanek3lVReA7NaMU2
 4hse+dLfBHZKk8lAb9E9N6aU1/TXBtwhPWPLLtHxpSnS+UaUapsKrN36Kp1i0/kIQZfo
 HVo2YxHWes539ea/pnrbW5nfLgZ4wpDXlX2mpUoIMAxbGkXnEIK/za1dC5fgNbsTm6zj
 NcPTwCKtweysI+H59YIFlYEQf8sREG19TYikWeSZCBllOYodPE7GHzOjREW0aovRq4Ks
 9YDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Gb9u8BwK6K2VHZrF75n3DXs/h9sjtM0WB9yfdMMjAhA=;
 b=iCnQlR6CbNCcjeAZlDndRbsiWOK+cJXQ4A9Nusv0zXclpJs3nPzb3ZRQOgZFoo1hAh
 MR6uTA48CfmLQGW8rjY+5R3dUCKhdQuYaroQ+p5OM25Z2NTAVLP+o2+wv9LGZGcN2e4R
 oF0DAs3GtytThJu/nfpXFrW2U0RoJrEkZOid6FPQq9SC7HNtiVt996pCCF26xl9XkP1h
 08w8qfCssakERbuMN+oNe0E603Pl8u2LB0Te+ULhaA+h+rDWXgfjNosxpUNDDWL/aIKG
 BcliCYkQykc65Guv7qyU11q7eskcUg9ob0lwtCkjqimIcYbXeCHESlEFxglU0s5ItKrg
 l4OQ==
X-Gm-Message-State: APjAAAVK/GzSgHC2+Er2sUuGweNROBkKo81Rc15nvWnEv8k7LV40Xnim
 tkBLg9zvrmwVQA6NYFAzHvOgVJkBjB6PpbyScUbQ5w==
X-Google-Smtp-Source: APXvYqxs+eKVLDUCD7g1rHPBXhFirmnfKqD64Voz1LQgEtV71NQil14wxCREeOhs+iddBtqX9ipfLYX5xoI8j2bfFO4=
X-Received: by 2002:adf:f2c7:: with SMTP id d7mr8881043wrp.320.1557259329560; 
 Tue, 07 May 2019 13:02:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507070430.GA24150@kroah.com>
 <20190507072721.GA4364@sultan-box.localdomain>
 <20190507074334.GB26478@kroah.com>
 <20190507081236.GA1531@sultan-box.localdomain>
 <20190507105826.oi6vah6x5brt257h@brauner.io>
 <CAJuCfpFeOVzDUq5O_cVgVGjonWDWjVVR192On6eB5gf==_uPKw@mail.gmail.com>
 <20190507165344.GA12201@sultan-box.localdomain>
In-Reply-To: <20190507165344.GA12201@sultan-box.localdomain>
From: Suren Baghdasaryan <surenb@google.com>
Date: Tue, 7 May 2019 13:01:57 -0700
Message-ID: <CAJuCfpHmfccmT6SwZMqseOQh2SY7+8pXtfE1nppKkiUmayh-ug@mail.gmail.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
To: Sultan Alsawaf <sultan@kerneltoast.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Daniel Colascione <dancol@google.com>, kernel-team <kernel-team@android.com>,
 Todd Kjos <tkjos@android.com>, Kees Cook <keescook@chromium.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Tim Murray <timmurray@google.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Oleg Nesterov <oleg@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 Andy Lutomirski <luto@amacapital.net>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogU3VsdGFuIEFsc2F3YWYgPHN1bHRhbkBrZXJuZWx0b2FzdC5jb20+CkRhdGU6IFR1ZSwg
TWF5IDcsIDIwMTkgYXQgOTo1MyBBTQpUbzogU3VyZW4gQmFnaGRhc2FyeWFuCkNjOiBDaHJpc3Rp
YW4gQnJhdW5lciwgR3JlZyBLcm9haC1IYXJ0bWFuLCBvcGVuIGxpc3Q6QU5EUk9JRCBEUklWRVJT
LApEYW5pZWwgQ29sYXNjaW9uZSwgVG9kZCBLam9zLCBLZWVzIENvb2ssIFBldGVyIFppamxzdHJh
LCBNYXJ0aWpuCkNvZW5lbiwgTEtNTCwgVGltIE11cnJheSwgTWljaGFsIEhvY2tvLCBsaW51eC1t
bSwgQXJ2ZSBIasO4bm5ldsOlZywgSW5nbwpNb2xuYXIsIFN0ZXZlbiBSb3N0ZWR0LCBPbGVnIE5l
c3Rlcm92LCBKb2VsIEZlcm5hbmRlcywgQW5keQpMdXRvbWlyc2tpLCBrZXJuZWwtdGVhbQoKPiBP
biBUdWUsIE1heSAwNywgMjAxOSBhdCAwOToyODo0N0FNIC0wNzAwLCBTdXJlbiBCYWdoZGFzYXJ5
YW4gd3JvdGU6Cj4gPiBIaSBTdWx0YW4sCj4gPiBMb29rcyBsaWtlIHlvdSBhcmUgcG9zdGluZyB0
aGlzIHBhdGNoIGZvciBkZXZpY2VzIHRoYXQgZG8gbm90IHVzZQo+ID4gdXNlcnNwYWNlIExNS0Qg
c29sdXRpb24gZHVlIHRvIHRoZW0gdXNpbmcgb2xkZXIga2VybmVscyBvciBkdWUgdG8KPiA+IHRo
ZWlyIHZlbmRvcnMgc3RpY2tpbmcgdG8gaW4ta2VybmVsIHNvbHV0aW9uLiBJZiBzbywgSSBzZWUg
Y291cGxlCj4gPiBsb2dpc3RpY2FsIGlzc3VlcyB3aXRoIHRoaXMgcGF0Y2guIEkgZG9uJ3Qgc2Vl
IGl0IGJlaW5nIGFkb3B0ZWQgaW4KPiA+IHVwc3RyZWFtIGtlcm5lbCA1Lnggc2luY2UgaXQgcmUt
aW1wbGVtZW50cyBhIGRlcHJlY2F0ZWQgbWVjaGFuaXNtIGV2ZW4KPiA+IHRob3VnaCB2ZW5kb3Jz
IHN0aWxsIHVzZSBpdC4gVmVuZG9ycyBvbiB0aGUgb3RoZXIgaGFuZCwgd2lsbCBub3QgYWRvcHQK
PiA+IGl0IHVudGlsIHlvdSBzaG93IGV2aWRlbmNlIHRoYXQgaXQgd29ya3Mgd2F5IGJldHRlciB0
aGFuIHdoYXQKPiA+IGxvd21lbW9yeWtpbGxlZCBkcml2ZXIgZG9lcyBub3cuIFlvdSB3b3VsZCBo
YXZlIHRvIHByb3ZpZGUgbWVhc3VyYWJsZQo+ID4gZGF0YSBhbmQgZXhwbGFpbiB5b3VyIHRlc3Rz
IGJlZm9yZSB0aGV5IHdvdWxkIGNvbnNpZGVyIHNwZW5kaW5nIHRpbWUKPiA+IG9uIHRoaXMuCj4K
PiBZZXMsIHRoaXMgaXMgbW9zdGx5IGZvciB0aGUgZGV2aWNlcyBhbHJlYWR5IHByb2R1Y2VkIHRo
YXQgYXJlIGZvcmNlZCB0byBzdWZmZXIKPiB3aXRoIHBvb3IgbWVtb3J5IG1hbmFnZW1lbnQuIEkg
Y2FuJ3QgZXZlbiBjb252aW5jZSB2ZW5kb3JzIHRvIGZpeCBrZXJuZWwKPiBtZW1vcnkgbGVha3Ms
IHNvIHRoZXJlJ3Mgbm8gd2F5IEknZCBiZSBhYmxlIHRvIGNvbnZpbmNlIHRoZW0gb2YgdHJ5aW5n
IHRoaXMKPiBwYXRjaCwgZXNwZWNpYWxseSBzaW5jZSBpdCBzZWVtcyBsaWtlIHlvdSdyZSBoYXZp
bmcgdHJvdWJsZSBjb252aW5jaW5nIHZlbmRvcnMKPiB0byBzdG9wIHVzaW5nIGxvd21lbW9yeWtp
bGxlciBpbiB0aGUgZmlyc3QgcGxhY2UuIEFuZCB0aGFua2Z1bGx5LCBjb252aW5jaW5nCj4gdmVu
ZG9ycyBpc24ndCBteSBqb2IgOikKPgo+ID4gT24gdGhlIGltcGxlbWVudGF0aW9uIHNpZGUgSSdt
IG5vdCBjb252aW5jZWQgYXQgYWxsIHRoYXQgdGhpcyB3b3VsZAo+ID4gd29yayBiZXR0ZXIgb24g
YWxsIGRldmljZXMgYW5kIGluIGFsbCBjaXJjdW1zdGFuY2VzLiBXZSBoYWQgY2FzZXMgd2hlbgo+
ID4gYSBuZXcgbWVjaGFuaXNtIHdvdWxkIHNob3cgdmVyeSBnb29kIHJlc3VsdHMgdW50aWwgb25l
IHVzZWNhc2UKPiA+IGNvbXBsZXRlbHkgYnJva2UgaXQuIEJ1bGsga2lsbGluZyBvZiBwcm9jZXNz
ZXMgdGhhdCB5b3UgYXJlIGRvaW5nIGluCj4gPiB5b3VyIHBhdGNoIHdhcyBhIHZlcnkgZ29vZCBl
eGFtcGxlIG9mIHN1Y2ggYSBkZWNpc2lvbiB3aGljaCBsYXRlciBvbgo+ID4gd2UgaGFkIHRvIHJl
dGhpbmsuIFRoYXQncyB3aHkgYmFraW5nIHRoZXNlIHBvbGljaWVzIGludG8ga2VybmVsIGlzCj4g
PiB2ZXJ5IHByb2JsZW1hdGljLiBBbm90aGVyIHByb2JsZW0gSSBzZWUgd2l0aCB0aGUgaW1wbGVt
ZW50YXRpb24gdGhhdAo+ID4gaXQgdGllcyBwcm9jZXNzIGtpbGxpbmcgd2l0aCB0aGUgcmVjbGFp
bSBzY2FuIGRlcHRoLiBJdCdzIHZlcnkgc2ltaWxhcgo+ID4gdG8gaG93IHZtcHJlc3N1cmUgd29y
a3MgYW5kIHZtcHJlc3N1cmUgaW4gbXkgZXhwZXJpZW5jZSBpcyB2ZXJ5Cj4gPiB1bnByZWRpY3Rh
YmxlLgo+Cj4gQ291bGQgeW91IGVsYWJvcmF0ZSBhIGJpdCBvbiB3aHkgYnVsayBraWxsaW5nIGlz
bid0IGdvb2Q/CgpZZXMuIFNldmVyYWwgbW9udGhzIGFnbyB3ZSBnb3QgcmVwb3J0cyB0aGF0IExN
S0QgZ290IHZlcnkgYWdncmVzc2l2ZQpraWxsaW5nIG1vcmUgcHJvY2Vzc2VzIGluIHNpdHVhdGlv
bnMgd2hpY2ggZGlkIG5vdCByZXF1aXJlIHRoYXQgbWFueQpraWxscyB0byByZWNvdmVyIGZyb20g
bWVtb3J5IHByZXNzdXJlLiBBZnRlciBpbnZlc3RpZ2F0aW9uIHdlIHRyYWNrZWQKaXQgdG8gdGhl
IGJ1bGsga2lsbGluZyB3aGljaCB3b3VsZCBraWxsIHRvbyBtYW55IHByb2Nlc3NlcyBkdXJpbmcg
YQptZW1vcnkgdXNhZ2Ugc3Bpa2UuIFdoZW4ga2lsbGluZyBncmFkdWFsbHkgdGhlIGtpbGxzIHdv
dWxkIGJlIGF2b2lkZWQsCnNvIHdlIGhhZCB0byBnZXQgYmFjayB0byBhIG1vcmUgYmFsYW5jZWQg
YXBwcm9hY2guIFRoZSBjb25jZXB0dWFsCmlzc3VlIHdpdGggYnVsayBraWxsaW5nIGlzIHRoYXQg
eW91IGNhbid0IGNhbmNlbCBpdCB3aGVuIGRldmljZQpyZWNvdmVycyBxdWlja2VyIHRoYW4geW91
IGV4cGVjdGVkLgoKPiA+ID4gPiBJIGxpbmtlZCBpbiB0aGUgcHJldmlvdXMgbWVzc2FnZSwgR29v
Z2xlIG1hZGUgYSByYXRoZXIgbGFyZ2Ugc2V0IG9mCj4gPiA+ID4gbW9kaWZpY2F0aW9ucyB0byB0
aGUgc3VwcG9zZWRseS1kZWZ1bmN0IGxvd21lbW9yeWtpbGxlci5jIG5vdCBvbmUgbW9udGggYWdv
Lgo+ID4gPiA+IFdoYXQncyBnb2luZyBvbj8KPiA+Cj4gPiBJZiB5b3UgbG9vayBpbnRvIHRoYXQg
Y29tbWl0LCBpdCBhZGRzIGFiaWxpdHkgdG8gcmVwb3J0IGtpbGwgc3RhdHMuIElmCj4gPiB0aGF0
IHdhcyBhIGNoYW5nZSBpbiBob3cgdGhhdCBkcml2ZXIgd29ya3MgaXQgd291bGQgYmUgcmVqZWN0
ZWQuCj4KPiBGYWlyLCB0aG91Z2ggaXQgd2FzIHF1aXRlIHN0cmFuZ2Ugc2VlaW5nIHNvbWV0aGlu
ZyB0aGF0IHdhcyBzdXBwb3NlZGx5IHRvdGFsbHkKPiBhYmFuZG9uZWQgcmVjZWl2aW5nIGEgbGFy
Z2UgY2h1bmsgb2YgY29kZSBmb3IgcmVwb3J0aW5nIHN0YXRzLgo+Cj4gVGhhbmtzLAo+IFN1bHRh
bgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
