Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70967CFFEE
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 19:32:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB3B486398;
	Tue,  8 Oct 2019 17:32:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GdDcBhzQRTB0; Tue,  8 Oct 2019 17:32:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE46685F35;
	Tue,  8 Oct 2019 17:32:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B58331BF333
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 17:32:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B286885F35
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 17:32:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RoG8qpUTcH0T
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 17:32:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BCA8585B5B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 17:32:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 10:32:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,272,1566889200"; d="scan'208";a="193439247"
Received: from rjwysock-mobl1.ger.corp.intel.com (HELO [10.249.147.52])
 ([10.249.147.52])
 by fmsmga007.fm.intel.com with ESMTP; 08 Oct 2019 10:32:28 -0700
Subject: Re: [PATCH v2] PCI: PM: Move to D0 before calling
 pci_legacy_resume_early()
To: Dexuan Cui <decui@microsoft.com>, Bjorn Helgaas <helgaas@kernel.org>
References: <KU1P153MB016637CAEAD346F0AA8E3801BFAD0@KU1P153MB0166.APCP153.PROD.OUTLOOK.COM>
 <20191007132414.GA19294@google.com>
 <PU1P153MB016996765F9BB827256D05DEBF9B0@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
Organization: Intel Technology Poland Sp. z o. o., KRS 101882, ul. Slowackiego
 173, 80-298 Gdansk
Message-ID: <a2d8ad9f-b59d-57e4-f014-645e7b796cc4@intel.com>
Date: Tue, 8 Oct 2019 19:32:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <PU1P153MB016996765F9BB827256D05DEBF9B0@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
Content-Language: en-US
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
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Kelley <mikelley@microsoft.com>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, "apw@canonical.com" <apw@canonical.com>,
 vkuznets <vkuznets@redhat.com>, "jasowang@redhat.com" <jasowang@redhat.com>,
 "jackm@mellanox.com" <jackm@mellanox.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMTAvNy8yMDE5IDg6NTcgUE0sIERleHVhbiBDdWkgd3JvdGU6Cj4+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tCj4+IEZyb206IEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNAa2VybmVsLm9yZz4K
Pj4gU2VudDogTW9uZGF5LCBPY3RvYmVyIDcsIDIwMTkgNjoyNCBBTQo+PiBUbzogRGV4dWFuIEN1
aSA8ZGVjdWlAbWljcm9zb2Z0LmNvbT4KPj4gQ2M6IGxvcmVuem8ucGllcmFsaXNpQGFybS5jb207
IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7IE1pY2hhZWwgS2VsbGV5Cj4+IDxtaWtlbGxleUBt
aWNyb3NvZnQuY29tPjsgbGludXgtaHlwZXJ2QHZnZXIua2VybmVsLm9yZzsKPj4gbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsgZHJpdmVyZGV2LWRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmc7IFNhc2hhCj4+IExldmluIDxBbGV4YW5kZXIuTGV2aW5AbWljcm9zb2Z0LmNvbT47IEhhaXlh
bmcgWmhhbmcKPj4gPGhhaXlhbmd6QG1pY3Jvc29mdC5jb20+OyBLWSBTcmluaXZhc2FuIDxreXNA
bWljcm9zb2Z0LmNvbT47Cj4+IG9sYWZAYWVwZmxlLmRlOyBhcHdAY2Fub25pY2FsLmNvbTsgamFz
b3dhbmdAcmVkaGF0LmNvbTsgdmt1em5ldHMKPj4gPHZrdXpuZXRzQHJlZGhhdC5jb20+OyBtYXJj
ZWxvLmNlcnJpQGNhbm9uaWNhbC5jb207IFN0ZXBoZW4gSGVtbWluZ2VyCj4+IDxzdGhlbW1pbkBt
aWNyb3NvZnQuY29tPjsgamFja21AbWVsbGFub3guY29tCj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0gg
djJdIFBDSTogUE06IE1vdmUgdG8gRDAgYmVmb3JlIGNhbGxpbmcKPj4gcGNpX2xlZ2FjeV9yZXN1
bWVfZWFybHkoKQo+Pgo+PiBPbiBXZWQsIEF1ZyAxNCwgMjAxOSBhdCAwMTowNjo1NUFNICswMDAw
LCBEZXh1YW4gQ3VpIHdyb3RlOgo+Pj4gSW4gcGNpX2xlZ2FjeV9zdXNwZW5kX2xhdGUoKSwgdGhl
IGRldmljZSBzdGF0ZSBpcyBtb3ZlZCB0byBQQ0lfVU5LTk9XTi4KPj4+Cj4+PiBJbiBwY2lfcG1f
dGhhd19ub2lycSgpLCB0aGUgc3RhdGUgaXMgc3VwcG9zZWQgdG8gYmUgbW92ZWQgYmFjayB0byBQ
Q0lfRDAsCj4+PiBidXQgdGhlIGN1cnJlbnQgY29kZSBtaXNzZXMgdGhlIHBjaV9sZWdhY3lfcmVz
dW1lX2Vhcmx5KCkgcGF0aCwgc28gdGhlCj4+PiBzdGF0ZSByZW1haW5zIGluIFBDSV9VTktOT1dO
IGluIHRoYXQgcGF0aC4gQXMgYSByZXN1bHQsIGluIHRoZSByZXN1bWUKPj4+IHBoYXNlIG9mIGhp
YmVybmF0aW9uLCB0aGlzIGNhdXNlcyBhbiBlcnJvciBmb3IgdGhlIE1lbGxhbm94IFZGIGRyaXZl
ciwKPj4+IHdoaWNoIGZhaWxzIHRvIGVuYWJsZSBNU0ktWCBiZWNhdXNlIHBjaV9tc2lfc3VwcG9y
dGVkKCkgaXMgZmFsc2UgZHVlCj4+PiB0byBkZXYtPmN1cnJlbnRfc3RhdGUgIT0gUENJX0QwOgo+
Pj4KPj4+IG1seDRfY29yZSBhNmQxOjAwOjAyLjA6IERldGVjdGVkIHZpcnR1YWwgZnVuY3Rpb24g
LSBydW5uaW5nIGluIHNsYXZlIG1vZGUKPj4+IG1seDRfY29yZSBhNmQxOjAwOjAyLjA6IFNlbmRp
bmcgcmVzZXQKPj4+IG1seDRfY29yZSBhNmQxOjAwOjAyLjA6IFNlbmRpbmcgdmhjcjAKPj4+IG1s
eDRfY29yZSBhNmQxOjAwOjAyLjA6IEhDQSBtaW5pbXVtIHBhZ2Ugc2l6ZTo1MTIKPj4+IG1seDRf
Y29yZSBhNmQxOjAwOjAyLjA6IFRpbWVzdGFtcGluZyBpcyBub3Qgc3VwcG9ydGVkIGluIHNsYXZl
IG1vZGUKPj4+IG1seDRfY29yZSBhNmQxOjAwOjAyLjA6IElOVHggaXMgbm90IHN1cHBvcnRlZCBp
biBtdWx0aS1mdW5jdGlvbiBtb2RlLAo+PiBhYm9ydGluZwo+Pj4gUE06IGRwbV9ydW5fY2FsbGJh
Y2soKTogcGNpX3BtX3RoYXcrMHgwLzB4ZDcgcmV0dXJucyAtOTUKPj4+IFBNOiBEZXZpY2UgYTZk
MTowMDowMi4wIGZhaWxlZCB0byB0aGF3OiBlcnJvciAtOTUKPj4+Cj4+PiBUbyBiZSBtb3JlIGFj
Y3VyYXRlLCB0aGUgInJlc3VtZSIgcGhhc2UgbWVhbnMgdGhlICJ0aGF3IiBjYWxsYmFja3Mgd2hp
Y2gKPj4+IHJ1biBiZWZvcmUgdGhlIHN5c3RlbSBlbnRlcnMgaGliZXJuYXRpb246IHdoZW4gdGhl
IHVzZXIgcnVucyB0aGUgY29tbWFuZAo+Pj4gImVjaG8gZGlzayA+IC9zeXMvcG93ZXIvc3RhdGUi
IGZvciBoaWJlcm5hdGlvbiwgZmlyc3QgdGhlIGtlcm5lbCAiZnJlZXplcyIKPj4+IGFsbCB0aGUg
ZGV2aWNlcyBhbmQgY3JlYXRlcyBhIGhpYmVybmF0aW9uIGltYWdlLCB0aGVuIHRoZSBrZXJuZWwg
InRoYXdzIgo+Pj4gdGhlIGRldmljZXMgaW5jbHVkaW5nIHRoZSBkaXNrL05JQywgd3JpdGVzIHRo
ZSBtZW1vcnkgdG8gdGhlIGRpc2ssIGFuZAo+Pj4gcG93ZXJzIGRvd24uIFRoaXMgcGF0Y2ggZml4
ZXMgdGhlIGVycm9yIG1lc3NhZ2UgZm9yIHRoZSBNZWxsYW5veCBWRiBkcml2ZXIKPj4+IGluIHRo
aXMgcGhhc2UuCj4+Pgo+Pj4gV2hlbiB0aGUgc3lzdGVtIHN0YXJ0cyBhZ2FpbiwgYSBmcmVzaCBr
ZXJuZWwgc3RhcnRzIHRvIHJ1biwgYW5kIHdoZW4gdGhlCj4+PiBrZXJuZWwgZGV0ZWN0cyB0aGF0
IGEgaGliZXJuYXRpb24gaW1hZ2Ugd2FzIHNhdmVkLCB0aGUga2VybmVsICJxdWllc2NlcyIKPj4+
IHRoZSBkZXZpY2VzLCBhbmQgdGhlbiAicmVzdG9yZXMiIHRoZSBkZXZpY2VzIGZyb20gdGhlIHNh
dmVkIGltYWdlLiBJbiB0aGlzCj4+PiBwYXRoOgo+Pj4gZGV2aWNlX3Jlc3VtZV9ub2lycSgpIC0+
IC4uLiAtPgo+Pj4gICAgcGNpX3BtX3Jlc3RvcmVfbm9pcnEoKSAtPgo+Pj4gICAgICBwY2lfcG1f
ZGVmYXVsdF9yZXN1bWVfZWFybHkoKSAtPgo+Pj4gICAgICAgIHBjaV9wb3dlcl91cCgpIG1vdmVz
IHRoZSBkZXZpY2Ugc3RhdGVzIGJhY2sgdG8gUENJX0QwLiBUaGlzIHBhdGggaXMKPj4+IG5vdCBi
cm9rZW4gYW5kIGRvZXNuJ3QgbmVlZCBteSBwYXRjaC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBE
ZXh1YW4gQ3VpIDxkZWN1aUBtaWNyb3NvZnQuY29tPgo+PiBUaGlzIGxvb2tzIGxpa2UgYSBidWdm
aXggZm9yIDU4MzllZTczODllOCAoIlBDSSAvIFBNOiBGb3JjZSBkZXZpY2VzIHRvCj4+IEQwIGlu
IHBjaV9wbV90aGF3X25vaXJxKCkiKSBzbyBtYXliZSBpdCBzaG91bGQgYmUgbWFya2VkIGZvciBz
dGFibGUgYXMKPj4gNTgzOWVlNzM4OWU4IHdhcz8KPj4KPj4gUmFmYWVsLCBjb3VsZCB5b3UgY29u
ZmlybT8KCk5vLCBpdCBpcyBub3QgYSBidWcgZml4IGZvciB0aGF0IGNvbW1pdC7CoCBUaGUgdW5k
ZXJseWluZyBpc3N1ZSB3b3VsZCBiZSAKdGhlcmUgd2l0aG91dCB0aGF0IGNvbW1pdCB0b28uCgoK
Pj4+IC0tLQo+Pj4KPj4+IGNoYW5nZXMgaW4gdjI6Cj4+PiAJVXBkYXRlZCB0aGUgY2hhbmdlbG9n
IHdpdGggbW9yZSBkZXRhaWxzLgo+Pj4KPj4+ICAgZHJpdmVycy9wY2kvcGNpLWRyaXZlci5jIHwg
NyArKysrLS0tCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL3BjaS1kcml2ZXIuYyBiL2Ry
aXZlcnMvcGNpL3BjaS1kcml2ZXIuYwo+Pj4gaW5kZXggMzZkYmU5NjAzMDZiLi4yN2RmYzY4ZGI5
ZTcgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BjaS9wY2ktZHJpdmVyLmMKPj4+ICsrKyBiL2Ry
aXZlcnMvcGNpL3BjaS1kcml2ZXIuYwo+Pj4gQEAgLTEwNzQsMTUgKzEwNzQsMTYgQEAgc3RhdGlj
IGludCBwY2lfcG1fdGhhd19ub2lycShzdHJ1Y3QgZGV2aWNlCj4+ICpkZXYpCj4+PiAgIAkJCXJl
dHVybiBlcnJvcjsKPj4+ICAgCX0KPj4+Cj4+PiAtCWlmIChwY2lfaGFzX2xlZ2FjeV9wbV9zdXBw
b3J0KHBjaV9kZXYpKQo+Pj4gLQkJcmV0dXJuIHBjaV9sZWdhY3lfcmVzdW1lX2Vhcmx5KGRldik7
Cj4+PiAtCj4+PiAgIAkvKgo+Pj4gICAJICogcGNpX3Jlc3RvcmVfc3RhdGUoKSByZXF1aXJlcyB0
aGUgZGV2aWNlIHRvIGJlIGluIEQwIChiZWNhdXNlIG9mIE1TSQo+Pj4gICAJICogcmVzdG9yYXRp
b24gYW1vbmcgb3RoZXIgdGhpbmdzKSwgc28gZm9yY2UgaXQgaW50byBEMCBpbiBjYXNlIHRoZQo+
Pj4gICAJICogZHJpdmVyJ3MgImZyZWV6ZSIgY2FsbGJhY2tzIHB1dCBpdCBpbnRvIGEgbG93LXBv
d2VyIHN0YXRlIGRpcmVjdGx5Lgo+Pj4gICAJICovCj4+PiAgIAlwY2lfc2V0X3Bvd2VyX3N0YXRl
KHBjaV9kZXYsIFBDSV9EMCk7Cj4+PiArCj4+PiArCWlmIChwY2lfaGFzX2xlZ2FjeV9wbV9zdXBw
b3J0KHBjaV9kZXYpKQo+Pj4gKwkJcmV0dXJuIHBjaV9sZWdhY3lfcmVzdW1lX2Vhcmx5KGRldik7
Cj4+PiArCj4+PiAgIAlwY2lfcmVzdG9yZV9zdGF0ZShwY2lfZGV2KTsKPj4+Cj4+PiAgIAlpZiAo
ZHJ2ICYmIGRydi0+cG0gJiYgZHJ2LT5wbS0+dGhhd19ub2lycSkKPj4+IC0tCj4+PiAyLjE5LjEK
Pj4+ClRoZSBwYXRjaCBsb29rcyByZWFzb25hYmxlIHRvIG1lLCBidXQgdGhlIGNvbW1lbnQgYWJv
dmUgdGhlIApwY2lfc2V0X3Bvd2VyX3N0YXRlKCkgY2FsbCBuZWVkcyB0byBiZSB1cGRhdGVkIHRv
byBJTU8uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
